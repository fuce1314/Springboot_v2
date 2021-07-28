package com.fc.v2.controller;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.model.auto.SysNotice;
import com.fc.v2.model.auto.TsysUser;
import com.fc.v2.model.custom.SysMenu;
import com.fc.v2.shiro.util.ShiroUtils;
import com.fc.v2.util.StringUtils;
import com.wf.captcha.utils.CaptchaUtil;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 后台方法
 * 
 * @ClassName: HomeController
 * @author fuce
 * @date 2019-10-21 00:10
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {
	private static Logger logger = LoggerFactory.getLogger(AdminController.class);

	private String prefix = "admin";

	@ApiOperation(value = "首页", notes = "首页")
	@GetMapping({"", "/index"})
	public String index(HttpServletRequest request) {
		request.getSession().setAttribute("sessionUserName", ShiroUtils.getUser().getNickname());
		// 获取公告信息
		List<SysNotice> notices = sysNoticeService.getuserNoticeNotRead(ShiroUtils.getUser(), 0);
		request.getSession().setAttribute("notices", notices);
		return prefix + "/index";
	}




	@ApiOperation(value = "获取登录用户菜单栏", notes = "获取登录用户菜单栏")
	@GetMapping("/getUserMenu")
	@ResponseBody
	public List<SysMenu> getUserMenu(){
		List<SysMenu> sysMenus=sysPermissionService.getSysMenus(ShiroUtils.getUserId());
		return sysMenus;
	}




	/**
	 * 请求到登陆界面
	 * 
	 * @param request
	 * @return
	 */
	@ApiOperation(value = "请求到登陆界面", notes = "请求到登陆界面")
	@GetMapping("/login")
	public String login(ModelMap modelMap) {
		try {
			if ((null != SecurityUtils.getSubject() && SecurityUtils.getSubject().isAuthenticated()) || SecurityUtils.getSubject().isRemembered()) {
				return "redirect:/" + prefix + "/index";
			} else {
				System.out.println("--进行登录验证..验证开始");
				modelMap.put("RollVerification", v2Config.getRollVerification());
				System.out.println("V2Config.getRollVerification()>>>" + v2Config.getRollVerification());
				return "login";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "login";
	}

	/**
	 * 用户登陆验证
	 * 
	 * @param user
	 * @param rcode
	 * @param redirectAttributes
	 * @param rememberMe
	 * @param model
	 * @param request
	 * @return
	 */
	@ApiOperation(value = "用户登陆验证", notes = "用户登陆验证")
	@PostMapping("/login")
	@ResponseBody
	public AjaxResult login(TsysUser user, String captcha, RedirectAttributes redirectAttributes, boolean rememberMe,
			HttpServletRequest request) {
		// ModelAndView view =new ModelAndView();
		Boolean yz = false;
		// 获取session中的验证码
		String verCode = (String) request.getSession().getAttribute("captcha");
		 // 判断验证码
		if (captcha!=null && captcha.toLowerCase().equals(verCode.trim().toLowerCase())) {
			//清除验证码
			CaptchaUtil.clear(request);  // 清除session中的验证码
			yz=true;
		}
		
		// 判断验证码
		if (yz) {
			String userName = user.getUsername();
			Subject currentUser = SecurityUtils.getSubject();
			// 是否验证通过
			if (!currentUser.isAuthenticated()) {
				UsernamePasswordToken token = new UsernamePasswordToken(userName, user.getPassword());
				try {
					if (rememberMe) {
						token.setRememberMe(true);
					}
					// 存入用户
					currentUser.login(token);
					if (StringUtils.isNotNull(ShiroUtils.getUser())) {
						// 若为前后端分离版本，则可把sessionId返回，作为分离版本的请求头authToken
						// String authToken = ShiroUtils.getSessionId();
						// return AjaxResult.successData(200, authToken);
						return AjaxResult.success();
					} else {
						return AjaxResult.error(500, "未知账户");
					}
				} catch (UnknownAccountException uae) {
					logger.info("对用户[" + userName + "]进行登录验证..验证未通过,未知账户");
					return AjaxResult.error(500, "未知账户");
				} catch (IncorrectCredentialsException ice) {
					logger.info("对用户[" + userName + "]进行登录验证..验证未通过,错误的凭证");
					return AjaxResult.error(500, "用户名或密码不正确");
				} catch (LockedAccountException lae) {
					logger.info("对用户[" + userName + "]进行登录验证..验证未通过,账户已锁定");
					return AjaxResult.error(500, "账户已锁定");
				} catch (ExcessiveAttemptsException eae) {
					logger.info("对用户[" + userName + "]进行登录验证..验证未通过,错误次数过多");
					return AjaxResult.error(500, "用户名或密码错误次数过多");
				} catch (AuthenticationException ae) {
					// 通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
					logger.info("对用户[" + userName + "]进行登录验证..验证未通过,堆栈轨迹如下");
					ae.printStackTrace();
					return AjaxResult.error(500, "用户名或密码不正确");
				}
			} else {
				if (StringUtils.isNotNull(ShiroUtils.getUser())) {
					// 跳转到 get请求的登陆方法
					// view.setViewName("redirect:/"+prefix+"/index");
					return AjaxResult.success();
				} else {
					return AjaxResult.error(500, "未知账户");
				}
			}
		} else {
			return AjaxResult.error(500, "验证码不正确!");
		}

	}
	
	
	/**
	 * 手机登录
	 * @param user
	 * @param redirectAttributes
	 * @param rememberMe
	 * @param request
	 * @return
	 * @author fuce
	 * @Date 2020年12月7日 上午12:54:28
	 */
	@ApiOperation(value = "手机登录", notes = "手机登录")
	@PostMapping("/API/login")
	@ResponseBody
	public AjaxResult APIlogin(TsysUser user,boolean rememberMe,HttpServletRequest request) {
		// ModelAndView view =new ModelAndView();
		Boolean yz = true;
//		if (V2Config.getRollVerification()) {// 滚动验证
//			yz = true;
//		} else {// 图片验证
//			String scode = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
//			yz = StringUtils.isNotEmpty(scode) && StringUtils.isNotEmpty(code) && scode.equals(code);
//		}
		System.out.println("/API/login手机请求");
		// 判断验证码
		if (yz) {
			String userName = user.getUsername();
			Subject currentUser = SecurityUtils.getSubject();
			// 是否验证通过
			if (!currentUser.isAuthenticated()) {
				UsernamePasswordToken token = new UsernamePasswordToken(userName, user.getPassword());
				try {
					if (rememberMe) {
						token.setRememberMe(true);
					}
					// 存入用户
					currentUser.login(token);
					if (StringUtils.isNotNull(ShiroUtils.getUser())) {
						// 若为前后端分离版本，则可把sessionId返回，作为分离版本的请求头authToken
						 String authToken = ShiroUtils.getSessionId();
						 return AjaxResult.successData(200, authToken);
						//return AjaxResult.success();
					} else {
						return AjaxResult.error(500, "未知账户");
					}
				} catch (UnknownAccountException uae) {
					logger.info("对用户[" + userName + "]进行登录验证..验证未通过,未知账户");
					return AjaxResult.error(500, "未知账户");
				} catch (IncorrectCredentialsException ice) {
					logger.info("对用户[" + userName + "]进行登录验证..验证未通过,错误的凭证");
					return AjaxResult.error(500, "用户名或密码不正确");
				} catch (LockedAccountException lae) {
					logger.info("对用户[" + userName + "]进行登录验证..验证未通过,账户已锁定");
					return AjaxResult.error(500, "账户已锁定");
				} catch (ExcessiveAttemptsException eae) {
					logger.info("对用户[" + userName + "]进行登录验证..验证未通过,错误次数过多");
					return AjaxResult.error(500, "用户名或密码错误次数过多");
				} catch (AuthenticationException ae) {
					// 通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
					logger.info("对用户[" + userName + "]进行登录验证..验证未通过,堆栈轨迹如下");
					ae.printStackTrace();
					return AjaxResult.error(500, "用户名或密码不正确");
				}
			} else {
				if (StringUtils.isNotNull(ShiroUtils.getUser())) {
					// 跳转到 get请求的登陆方法
					// view.setViewName("redirect:/"+prefix+"/index");
					 String authToken = ShiroUtils.getSessionId();
					 return AjaxResult.successData(200, authToken);
				} else {
					return AjaxResult.error(500, "未知账户");
				}
			}
		} else {
			return AjaxResult.error(500, "验证码不正确!");
		}

	}

	/**
	 * 退出登陆
	 * 
	 * @return
	 */
	@ApiOperation(value = "退出登陆", notes = "退出登陆")
	@GetMapping("/Loginout")
	@ResponseBody
	public AjaxResult LoginOut(HttpServletRequest request, HttpServletResponse response) {
		// 在这里执行退出系统前需要清空的数据
		Subject subject = SecurityUtils.getSubject();
		// 注销
		subject.logout();
		return success();
	}

	/**** 页面测试 ****/
	@ApiOperation(value = "404页面", notes = "404页面")
	@GetMapping("Out404")
	public String Out404(HttpServletRequest request, HttpServletResponse response) {

		return "redirect:/error/404";
	}

	@GetMapping("Out403")
	@ApiOperation(value = "403页面", notes = "403页面")
	public String Out403(HttpServletRequest request, HttpServletResponse response) {

		return "redirect:/error/403";
	}

	@ApiOperation(value = "500页面", notes = "500页面")
	@GetMapping("Out500")
	public String Out500(HttpServletRequest request, HttpServletResponse response) {

		return "redirect:/error/500";
	}

	/**
	 * 权限测试跳转页面
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@ApiOperation(value = "权限测试跳转页面", notes = "权限测试跳转页面")
	@GetMapping("Outqx")
	@RequiresPermissions("system:user:asd")
	public String Outqx(HttpServletRequest request, HttpServletResponse response) {

		return "redirect:/error/500";
	}
	/**** 页面测试EDN ****/
}
