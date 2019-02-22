package com.fc.test.common.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.shiro.authz.UnauthenticatedException;
import org.apache.shiro.authz.UnauthorizedException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

/**
 * 全局异常处理
 * @author fuce 
 * @date: 2018年9月9日 下午10:52:55
 */
public class GlobalExceptionResolver  implements HandlerExceptionResolver{
	private static Logger logger = LoggerFactory.getLogger(GlobalExceptionResolver.class);

	@Override
	public ModelAndView resolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex) {
		
		ModelAndView mv;
		
		//开发环境打印异常，正式环境请注销
    	ex.printStackTrace();
		
        //shiro异常拦截 
        if(ex instanceof UnauthorizedException){
        	//未授权异常
            mv = new ModelAndView("/error/403");
            return mv;
        }else if(ex instanceof UnauthenticatedException){
        	//未认证异常
            mv = new ModelAndView("/error/403");
            return mv;
        }
        else {
            mv = new ModelAndView();
            logger.error(ExceptionUtils.getFullStackTrace(ex));
            return mv;

        }
	}

}
