package com.fc.v2.controller.admin;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.model.auto.SysNotice;
import com.fc.v2.model.auto.TsysOperLog;
import com.fc.v2.model.custom.Service;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;

/**
 * 服务器信息Controller
 * @ClassName: ServiceController
 * @author fuce
 * @date 2019-06-23 00:55
 * @version V1.0
 */
@Api(value = "服务器信息")
@Controller
@RequestMapping("/ServiceController")
public class ServiceController extends BaseController{

	//跳转页面参数
	private final String prefix = "admin/service";
	
	/**
	 * 展示页面
	 * @param model
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午4:04:03
	 */
	@ApiOperation(value = "展示页面", notes = "展示页面")
	@GetMapping("/view")
	@RequiresPermissions("system:service:view")
    public String view(ModelMap model)
    {
    	List<SysNotice> sysNotices= sysNoticeService.getNEW();
    	List<TsysOperLog> sysOperLog=sysOperLogService.getNEW();
    	if(sysNotices==null||sysNotices.size()<=0){
    		SysNotice sysNotice=new SysNotice();
    		sysNotice.setId("0");
    		sysNotice.setTitle("暂无公告");
    		sysNotice.setCreateTime(new Date());
    		sysNotices.add(sysNotice);
		}


		model.addAttribute("service", new Service());
		model.addAttribute("sysNotices", sysNotices);
		model.addAttribute("sysOperLog", sysOperLog);
        return prefix + "/list";
    }
}
