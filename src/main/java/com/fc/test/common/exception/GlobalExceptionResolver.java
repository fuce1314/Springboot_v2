package com.fc.test.common.exception;

import javax.servlet.http.HttpServletRequest;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.UnauthenticatedException;
import org.apache.shiro.authz.UnauthorizedException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.BindException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.ModelAndView;
import com.fc.test.common.domain.AjaxResult;
import com.fc.test.common.exception.demo.DemoModeException;
import com.fc.test.util.ServletUtils;

/**
 * 全局异常处理
 * @author fuce 
 * @date: 2018年9月9日 下午10:52:55
 */
@RestControllerAdvice
public class GlobalExceptionResolver{
	private static Logger logger = LoggerFactory.getLogger(GlobalExceptionResolver.class);
	
	
	
	 /**
     * 权限校验失败 如果请求为ajax返回json，普通请求跳转页面
     */
    @ExceptionHandler(AuthorizationException.class)
    public Object handleAuthorizationException(HttpServletRequest request, AuthorizationException e)
    {
		//开发环境打印异常，正式环境请注销
    	logger.error(" 权限校验异常》》"+e.getMessage(), e);
        if (ServletUtils.isAjaxRequest(request))
        {
            return AjaxResult.error(e.getMessage());
        }
        else
        {
        	ModelAndView mv;
        	//shiro异常拦截 
          if(e instanceof UnauthorizedException){
          	//未授权异常
              mv = new ModelAndView("/error/403");
              return mv;
          }else if(e instanceof UnauthenticatedException){
          	//未认证异常
              mv = new ModelAndView("/error/403");
              return mv;
          }
          else {
              mv = new ModelAndView();
              return mv;
  
          }
        }
    }
	
	
   
    
    /**
     * 自定义验证异常
     */
    @ExceptionHandler(BindException.class)
    public AjaxResult validatedBindException(BindException e)
    {
    	logger.error("自定义验证异常", e);
        String message = e.getAllErrors().get(0).getDefaultMessage();
        return AjaxResult.error(message);
    }
    
    
    /**
     * 请求方式不支持
     */
    @ExceptionHandler({ HttpRequestMethodNotSupportedException.class })
    public AjaxResult handleException(HttpRequestMethodNotSupportedException e)
    {
    	logger.error("请求方式不支持异常:", e);
        return AjaxResult.error("不支持' " + e.getMethod() + "'请求");
    }
  
    
    

    /**
     * 系统异常
     */
    @ExceptionHandler(Exception.class) 
    public ModelAndView handle(Exception e){ 
    	logger.error("系统异常:", e);
	    ModelAndView mv = new ModelAndView(); 
	    mv.addObject("message", e.getMessage()); 
	    mv.setViewName("/error/999"); 
	    return mv; 
    }
    
    /**
     * 演示模式异常
     */
    @ExceptionHandler(DemoModeException.class)
    public AjaxResult demoModeException(DemoModeException e)
    {
        return AjaxResult.error("演示模式，不允许操作");
    }
    
    /**
     * 拦截未知的运行时异常
     */
    @ExceptionHandler(RuntimeException.class)
    public AjaxResult notFount(RuntimeException e)
    {
    	logger.error("运行时异常:", e);
        return AjaxResult.error("运行时异常:" + e.getMessage());
    }

}
