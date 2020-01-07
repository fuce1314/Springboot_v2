package com.fc.test.common.interceptor;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import com.fc.test.common.conf.V2Config;
import com.fc.test.common.exception.demo.DemoModeException;
import com.fc.test.common.spring.SpringUtils;
import com.fc.test.model.auto.SysInterUrl;
import com.fc.test.model.auto.SysInterUrlExample;
import com.fc.test.service.SysInterUrlService;
import cn.hutool.core.util.StrUtil;
/**
 * 自定义拦截器
 * @author fc
 *
 */
public class MyInterceptor  implements HandlerInterceptor {
	
	/*************演示模式需要 start*************/
	/**需要被拦截的post请求url**/
	public static List<SysInterUrl> posturllist=new ArrayList<SysInterUrl>();
	/**需要被拦截的get请求url**/
	public static List<SysInterUrl> geturllist=new ArrayList<SysInterUrl>();
	/**注入拦截器表的service**/
	public static  SysInterUrlService interUrlService= SpringUtils.getBean(SysInterUrlService.class);
	/**
	 * 初始化静态块，避免多次创建调用
	 * 需要拦截的请求集合
	 */
	static {
		//post
		SysInterUrlExample example_post= new SysInterUrlExample();
		example_post.createCriteria().andTypeEqualTo(2);
		posturllist=interUrlService.selectByExample(example_post);
		//get
		SysInterUrlExample example_get= new SysInterUrlExample();
		example_get.createCriteria().andTypeEqualTo(1);
		geturllist= interUrlService.selectByExample(example_get);
//		//用户POST请求
//		posturllist.add("/UserController/add");
//		posturllist.add("/UserController/remove");
//		posturllist.add("/UserController/edit");
//		posturllist.add("/UserController/editPwd");
//		//自动生成POST请求
//		posturllist.add("/autoCodeController/addGlobal");
//		posturllist.add("/autoCodeController/saveOne");
//		//字典表POST请求
//		posturllist.add("/DictDataController/add");
//		posturllist.add("/DictDataController/remove");
//		posturllist.add("/DictDataController/edit");
//		posturllist.add("/DictTypeController/add");
//		posturllist.add("/DictTypeController/remove");
//		posturllist.add("/DictTypeController/edit");
//		//邮箱POST请求
//		posturllist.add("/EmailController/add");
//		posturllist.add("/EmailController/edit");
//		posturllist.add("/EmailController/remove");
//		//文件上传POST请求
//		posturllist.add("/FileController/upload");
//		posturllist.add("/FileController/add");
//		posturllist.add("/FileController/remove");
//		posturllist.add("/FileController/del_file");
//		posturllist.add("/FileController/edit");
//		//日志POST请求
//		posturllist.add("/LogController/remove");
//		//权限POST请求
//		posturllist.add("/PermissionController/add");
//		posturllist.add("/PermissionController/remove");
//		posturllist.add("/PermissionController/edit");
//		//定时器POST请求
//		posturllist.add("/SysQuartzJobController/add");
//		posturllist.add("/SysQuartzJobController/remove");
//		posturllist.add("/SysQuartzJobController/edit");
//		posturllist.add("/SysQuartzJobController/changeStatus");
//		posturllist.add("/SysQuartzJobController/run");
//		posturllist.add("/SysQuartzJobLogController/remove");
//		//角色POST请求
//		posturllist.add("/RoleController/add");
//		posturllist.add("/RoleController/remove");
//		posturllist.add("/RoleController/edit");
//		//公告POST请求
//		posturllist.add("/SysNoticeController/add");
//		posturllist.add("/SysNoticeController/remove");
//		posturllist.add("/SysNoticeController/viewinfo");
//		posturllist.add("/SysNoticeController/edit");
//		//省份POST请求
//		posturllist.add("/SysProvinceController/add");
//		posturllist.add("/SysProvinceController/remove");
//		posturllist.add("/SysProvinceController/edit");
//		//地区POST请求
//		posturllist.add("/SysAreaController/add");
//		posturllist.add("/SysAreaController/remove");
//		posturllist.add("/SysAreaController/edit");
//		//城市POST请求
//		posturllist.add("/SysCityController/add");
//		posturllist.add("/SysCityController/remove");
//		posturllist.add("/SysCityController/edit");
//		//街道POST请求
//		posturllist.add("/SysStreetController/add");
//		posturllist.add("/SysStreetController/remove");
//		posturllist.add("/SysStreetController/edit");
//		//百度编辑器POST请求
//		posturllist.add("/UeditorController/ueditor");
//		posturllist.add("/UeditorController/");
//		posturllist.add("/UeditorController/imgUpload");
//		//七牛POST请求
//		posturllist.add("/QiNiuCloudController/uploadToQiNiu");
//		//定时器GET请求
//		geturllist.add("/quartz/stop");
//		geturllist.add("/quartz/resume");
//		geturllist.add("/quartz/update");
//		geturllist.add("/quartz/delete");
		
	}
	/*************演示模式需要 end*************/
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
		//设置前端的全局 地址，如果前端网页错乱请修改这儿
		request.setAttribute("rootPath", request.getContextPath());
		//yml里面得演示模式true 为开启 就会拉取数据拦截表进行判断符合得就拦截
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
			
			for (SysInterUrl sysInterUrl : posturllist) {
				if(StrUtil.containsAnyIgnoreCase(requesturl, sysInterUrl.getUrl())) {
					return true;
				}
			}
		}else {
			for (SysInterUrl sysInterUrl : geturllist) {
				if(StrUtil.containsAnyIgnoreCase(requesturl, sysInterUrl.getUrl())) {
					return true;
				}
			}
		}
		
		return false;
	}
}
