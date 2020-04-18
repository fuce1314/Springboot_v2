package com.fc.test.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fc.test.common.base.BaseController;
import com.fc.test.common.conf.V2Config;
import com.fc.test.common.domain.AjaxResult;
import com.fc.test.model.auto.SysNotice;
import com.fc.test.model.auto.TsysUser;
import com.fc.test.model.custom.BootstrapTree;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.shiro.util.ShiroUtils;
import com.fc.test.util.StringUtils;
import com.google.code.kaptcha.Constants;
import io.swagger.annotations.ApiOperation;
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
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * 后台方法
 * @ClassName: HomeController
 * @author fuce
 * @date 2019-10-21 00:10
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController{
	private static Logger logger=LoggerFactory.getLogger(AdminController.class);
	
	private String prefix = "admin";
	
	@ApiOperation(value="首页",notes="首页")
	@GetMapping("/index")
	public String index(HttpServletRequest request) {
    	//获取菜单栏
    	BootstrapTree bootstrapTree= sysPermissionService.getbooBootstrapTreePerm(ShiroUtils.getUserId());
    	request.getSession().setAttribute("bootstrapTree", bootstrapTree);
    	request.getSession().setAttribute("sessionUserName",ShiroUtils.getUser().getNickname());
    	//获取公告信息
    	List<SysNotice>  notices=sysNoticeService.getuserNoticeNotRead(ShiroUtils.getUser(),0);
    	request.getSession().setAttribute("notices",notices);
		return prefix+"/index";
	}
	
	@ApiOperation(value="局部刷新区域",notes="局部刷新区域")
	@GetMapping("/main")
	public String main(ModelMap map) {
		setTitle(map, new TitleVo("首页", "首页", true,"欢迎进入", true, false));
		return prefix+"/main";
	}
	
	/**
	 * 请求到登陆界面
	 * @param request
	 * @return
	 */
	@ApiOperation(value="请求到登陆界面",notes="请求到登陆界面")
	@GetMapping("/login")
    public String login(ModelMap modelMap) {
        try {
            if ((null != SecurityUtils.getSubject() && SecurityUtils.getSubject().isAuthenticated()) || SecurityUtils.getSubject().isRemembered()) {
            	return "redirect:/"+prefix+"/index";
            } else {
            	System.out.println("--进行登录验证..验证开始"); 

            	modelMap.put("RollVerification", V2Config.getRollVerification());
            	System.out.println("V2Config.getRollVerification()>>>"+V2Config.getRollVerification());
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
	@ApiOperation(value="用户登陆验证",notes="用户登陆验证")
	@PostMapping("/login")
	@ResponseBody
	public AjaxResult login(TsysUser user,String code,RedirectAttributes redirectAttributes,boolean rememberMe,HttpServletRequest request) {
		 //ModelAndView view =new ModelAndView();
		Boolean yz=false;
		if(V2Config.getRollVerification()) {//滚动验证
			yz=true;
		}else {//图片验证
			 String scode = (String)request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
			 yz=StringUtils.isNotEmpty(scode)&&StringUtils.isNotEmpty(code)&&scode.equals(code);
		}
		 //判断验证码
		 if(yz){
			 String userName = user.getUsername();
			 Subject currentUser = SecurityUtils.getSubject();
			 //是否验证通过
			 if(!currentUser.isAuthenticated()) {
				 UsernamePasswordToken token =new UsernamePasswordToken(userName,user.getPassword());
				 try {
					 if(rememberMe) {
						 token.setRememberMe(true);
					 }
					 //存入用户
					 currentUser.login(token);
					 if(StringUtils.isNotNull(ShiroUtils.getUser())) {
			         	 //跳转到 get请求的登陆方法
			    		 //view.setViewName("redirect:/"+prefix+"/index");
			     		 return  AjaxResult.success();
			     	 }else {
			     		 return  AjaxResult.error(500,"未知账户");
			     	 }
				 }catch (UnknownAccountException uae) {
			            logger.info("对用户[" + userName + "]进行登录验证..验证未通过,未知账户");
			         	return  AjaxResult.error(500,"未知账户");
			        } catch (IncorrectCredentialsException ice) {
			            logger.info("对用户[" + userName + "]进行登录验证..验证未通过,错误的凭证");
			            return AjaxResult.error(500, "用户名或密码不正确");
			        } catch (LockedAccountException lae) {
			            logger.info("对用户[" + userName + "]进行登录验证..验证未通过,账户已锁定");
			            return AjaxResult.error(500,"账户已锁定");
			        } catch (ExcessiveAttemptsException eae) {
			            logger.info("对用户[" + userName + "]进行登录验证..验证未通过,错误次数过多");
			            return AjaxResult.error(500,"用户名或密码错误次数过多");
			        } catch (AuthenticationException ae) {
			            //通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
			            logger.info("对用户[" + userName + "]进行登录验证..验证未通过,堆栈轨迹如下");
			            ae.printStackTrace();
			            return AjaxResult.error(500,"用户名或密码不正确");
			        }
			 }else {
				 if(StringUtils.isNotNull(ShiroUtils.getUser())) {
		         	 //跳转到 get请求的登陆方法
		    		 //view.setViewName("redirect:/"+prefix+"/index");
		     		 return  AjaxResult.success();
		     	 }else {
		     		 return  AjaxResult.error(500,"未知账户");
		     	 }
			 }
		 }else{
			return AjaxResult.error(500,"验证码不正确!");
		 }
		 
	}
	
	/**
	 * 退出登陆
	 * @return
	 */
	@ApiOperation(value="退出登陆",notes="退出登陆")
	@GetMapping("/Loginout")
	public String LoginOut(HttpServletRequest request, HttpServletResponse response){
		//在这里执行退出系统前需要清空的数据
		Subject subject = SecurityUtils.getSubject();
		 //注销
        subject.logout();
        return "redirect:/"+prefix+"/login";
	}
	
	
	
	
	/****页面测试****/
	@ApiOperation(value="404页面",notes="404页面")
	@GetMapping("Out404")
	public String Out404(HttpServletRequest request, HttpServletResponse response){
		
        return "redirect:/error/404";
	}
	
	@GetMapping("Out403")
	@ApiOperation(value="403页面",notes="403页面")
	public String Out403(HttpServletRequest request, HttpServletResponse response){
		
        return "redirect:/error/403";
	}
	
	@ApiOperation(value="500页面",notes="500页面")
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
	@ApiOperation(value="权限测试跳转页面",notes="权限测试跳转页面")
	@GetMapping("Outqx")
	@RequiresPermissions("system:user:asd")
	public String Outqx(HttpServletRequest request, HttpServletResponse response){
		
        return "redirect:/error/500";
	}
	/****页面测试EDN****/
}
