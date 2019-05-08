package com.fc.test.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
/**
 * 自定义拦截器
 * @author fc
 *
 */
public class MyInterceptor  implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)throws Exception {
		// System.out.println(">>>MyInterceptor1>>>>>>>在整个请求结束之后被调用，也就是在DispatcherServlet 渲染了对应的视图之后执行（主要是用于进行资源清理工作）");
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)throws Exception {
		// System.out.println(">>>MyInterceptor1>>>>>>>请求处理之后进行调用，但是在视图被渲染之前（Controller方法调用之后）");
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		//String url2=request.getScheme()+"://"+ request.getServerName();
		//设置前端的全局 地址，如果前端网页错乱请修改这儿
		request.setAttribute("rootPath", request.getContextPath());
		//System.out.println("xxxxxxxxx==="+"http://localhost:8081/");
		//System.out.println(">>>MyInterceptor1>>>>>>>在请求处理之前进行调用（Controller方法调用之前）");
	
		return true;// 只有返回true才会继续向下执行，返回false取消当前请求
	}
		
}
