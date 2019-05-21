package com.fc.test.controller;

import io.swagger.annotations.ApiOperation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fc.test.common.base.BaseController;
import com.fc.test.model.auto.TsysUser;
import com.fc.test.model.custom.BootstrapThree;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.util.StringUtils;
import com.google.code.kaptcha.Constants;

@Controller
public class HomeController extends BaseController{
	private static Logger logger=LoggerFactory.getLogger(HomeController.class);
	

	@ApiOperation(value="首页",notes="首页")
	@GetMapping("/index")
	public String index() {
		return "admin/index";
	}
	
	@ApiOperation(value="局部刷新区域",notes="局部刷新区域")
	@GetMapping("/main")
	public String main() {
		return "admin/main";
	}
	
	/**
	 * 请求到登陆界面
	 * @param request
	 * @return
	 */
	@ApiOperation(value="请求到登陆界面",notes="请求到登陆界面")
	@GetMapping("/login")
    public String login(HttpServletRequest request,Model model) {
        try {
            if ((null != SecurityUtils.getSubject() && SecurityUtils.getSubject().isAuthenticated()) || SecurityUtils.getSubject().isRemembered()) {
            	setTitle(model, new TitleVo("首页", "首页", true,"欢迎进入", true, false));
            	//获取菜单栏
            	BootstrapThree bootstrapThree=sysPremissionService.getbooBootstrapThreePerm();
            	request.getSession().setAttribute("bootstrapThree", bootstrapThree);
            	return "admin/index";
            } else {
            	System.out.println("--进行登录验证..验证开始");
                return "login";
            }
        } catch (Exception e) {
        		e.printStackTrace();
        }
        return "login";
    }
	
	/**
	 * 用户登陆验证
	 * @param user
	 * @param rcode
	 * @param redirectAttributes
	 * @param rememberMe
	 * @param model
	 * @param request
	 * @return
	 */
	@PostMapping("login")
	public ModelAndView login(TsysUser user,String code,RedirectAttributes redirectAttributes,boolean rememberMe,Model model,HttpServletRequest request) {
		 ModelAndView view =new ModelAndView();
		 String scode = (String)request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
		 //判断验证码
		 if(StringUtils.isNotEmpty(scode)&&StringUtils.isNotEmpty(code)&&scode.equals(code)){
			 String userName = user.getUsername();
			 Subject currentUser = SecurityUtils.getSubject();
			 if(!currentUser.isAuthenticated()) {
				 UsernamePasswordToken token =new UsernamePasswordToken(userName,user.getPassword());
				 try {
					 if(rememberMe) {
						 token.setRememberMe(true);
					 }
					 //存入用户
					 currentUser.login(token);
					 
					 //setTitle(model, new TitleVo("欢迎页面", "首页", true,"欢迎进入", true, false));
						
					 
				 }catch (UnknownAccountException uae) {
			            logger.info("对用户[" + userName + "]进行登录验证..验证未通过,未知账户");
			            redirectAttributes.addFlashAttribute("message", "未知账户");
			        } catch (IncorrectCredentialsException ice) {
			            logger.info("对用户[" + userName + "]进行登录验证..验证未通过,错误的凭证");
			            redirectAttributes.addFlashAttribute("message", "用户名或密码不正确");
			        } catch (LockedAccountException lae) {
			            logger.info("对用户[" + userName + "]进行登录验证..验证未通过,账户已锁定");
			            redirectAttributes.addFlashAttribute("message", "账户已锁定");
			        } catch (ExcessiveAttemptsException eae) {
			            logger.info("对用户[" + userName + "]进行登录验证..验证未通过,错误次数过多");
			            redirectAttributes.addFlashAttribute("message", "用户名或密码错误次数过多");
			        } catch (AuthenticationException ae) {
			            //通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
			            logger.info("对用户[" + userName + "]进行登录验证..验证未通过,堆栈轨迹如下");
			            ae.printStackTrace();
			            redirectAttributes.addFlashAttribute("message", "用户名或密码不正确");
			        }
			 }
		 }else{
			 redirectAttributes.addFlashAttribute("message", "验证码不正确");
		 }
		 BootstrapThree bootstrapThree=sysPremissionService.getbooBootstrapThreePerm();
     	 request.getSession().setAttribute("bootstrapThree", bootstrapThree);
		 //跳转到 get请求的登陆方法
		 view.setViewName("admin/index");
		 return view;
		 
	}
	
	/**
	 * 退出登陆
	 * @return
	 */
	@GetMapping("Loginout")
	public String LoginOut(HttpServletRequest request, HttpServletResponse response){
		//在这里执行退出系统前需要清空的数据
		Subject subject = SecurityUtils.getSubject();
		 //注销
        subject.logout();
        return "redirect:/login";
	}
	
	
	
	
	/****页面测试****/
	@GetMapping("Out404")
	public String Out404(HttpServletRequest request, HttpServletResponse response){
		
        return "redirect:/error/404";
	}
	
	@GetMapping("Out403")
	public String Out403(HttpServletRequest request, HttpServletResponse response){
		
        return "redirect:/error/403";
	}
	@GetMapping("Out500")
	public String Out500(HttpServletRequest request, HttpServletResponse response){
		
        return "redirect:/error/500";
	}
	
	/**
	 * 权限测试跳转页面
	 * @param request
	 * @param response
	 * @return
	 */
	@GetMapping("Outqx")
	@RequiresPermissions("system:user:asd")
	public String Outqx(HttpServletRequest request, HttpServletResponse response){
		
        return "redirect:/error/500";
	}
	/****页面测试EDN****/
}
