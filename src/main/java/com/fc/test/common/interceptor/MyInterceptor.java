package com.fc.test.common.interceptor;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import com.fc.test.common.conf.V2Config;
import com.fc.test.common.exception.demo.DemoModeException;
import cn.hutool.core.util.StrUtil;
/**
 * 自定义拦截器
 * @author fc
 *
 */
public class MyInterceptor  implements HandlerInterceptor {
	
	
	/**需要被拦截的post请求url**/
	public static List<String> posturllist=new ArrayList<String>();
	/**需要被拦截的get请求url**/
	public static List<String> geturllist=new ArrayList<String>();
	
	/**
	 * 初始化静态块，避免多次创建调用
	 */
	static {
		posturllist.add("/UserController/add");
		posturllist.add("/UserController/remove");
		posturllist.add("/UserController/edit");
		posturllist.add("/UserController/editPwd");
		posturllist.add("/autoCodeController/addGlobal");
		posturllist.add("/autoCodeController/saveOne");
		posturllist.add("/DictDataController/add");
		posturllist.add("/DictDataController/remove");
		posturllist.add("/DictDataController/edit");
		posturllist.add("/DictTypeController/add");
		posturllist.add("/DictTypeController/remove");
		posturllist.add("/DictTypeController/edit");
		posturllist.add("/EmailController/add");
		posturllist.add("/EmailController/edit");
		posturllist.add("/FileController/upload");
		posturllist.add("/FileController/add");
		posturllist.add("/FileController/remove");
		posturllist.add("/FileController/del_file");
		posturllist.add("/FileController/edit");
		posturllist.add("/LogController/remove");
		posturllist.add("/PermissionController/add");
		posturllist.add("/PermissionController/remove");
		posturllist.add("/PermissionController/edit");
		posturllist.add("/SysQuartzJobController/add");
		posturllist.add("/SysQuartzJobController/remove");
		posturllist.add("/SysQuartzJobController/edit");
		posturllist.add("/SysQuartzJobController/changeStatus");
		posturllist.add("/SysQuartzJobController/run");
		posturllist.add("/SysQuartzJobLogController/remove");
		posturllist.add("/RoleController/add");
		posturllist.add("/RoleController/remove");
		posturllist.add("/RoleController/edit");
		posturllist.add("/SysAreaController/add");
		posturllist.add("/SysAreaController/remove");
		posturllist.add("/SysAreaController/edit");
		posturllist.add("/SysCityController/add");
		posturllist.add("/SysCityController/remove");
		posturllist.add("/SysCityController/edit");
		posturllist.add("/SysNoticeController/add");
		posturllist.add("/SysNoticeController/remove");
		posturllist.add("/SysNoticeController/viewinfo");
		posturllist.add("/SysNoticeController/edit");
		posturllist.add("/SysProvinceController/add");
		posturllist.add("/SysProvinceController/remove");
		posturllist.add("/SysProvinceController/edit");
		posturllist.add("/SysStreetController/add");
		posturllist.add("/SysStreetController/remove");
		posturllist.add("/SysStreetController/edit");
		posturllist.add("/UeditorController/ueditor");
		posturllist.add("/UeditorController/");
		posturllist.add("/UeditorController/imgUpload");
		
		geturllist.add("/quartz/stop");
		geturllist.add("/quartz/resume");
		geturllist.add("/quartz/update");
		geturllist.add("/quartz/delete");
	}

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
		//System.out.println("xxxxxxxxx==="+"http://localhost:8081/");
		//System.out.println(">>>MyInterceptor1>>>>>>>在请求处理之前进行调用（Controller方法调用之前）");
		//设置前端的全局 地址，如果前端网页错乱请修改这儿
		request.setAttribute("rootPath", request.getContextPath());
		if(V2Config.getDemoEnabled().equals("true")) {
			Boolean b = ifurl(request, response);
			if(b) {
				throw new DemoModeException();
			}
		}
		return true;// 只有返回true才会继续向下执行，返回false取消当前请求
	}
	
	/**
	 * 判断是否需要拦截的用于展示演示模式
	 * @param request
	 * @param response
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午5:17:30
	 */
	public Boolean ifurl(HttpServletRequest request, HttpServletResponse response) {
		//当前请求
		String requesturl=request.getRequestURI();
		if(request.getMethod().equals("POST")) {
			for (String postrul : posturllist) {
				if(StrUtil.containsAnyIgnoreCase(requesturl, postrul)) {
					return true;
				}
			}
		}else {
			for (String geturl : geturllist) {
				if(StrUtil.containsAnyIgnoreCase(requesturl, geturl)) {
					return true;
				}
			}
		}
		
		return false;
	}
}
