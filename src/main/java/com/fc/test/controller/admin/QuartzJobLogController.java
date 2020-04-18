package com.fc.test.controller.admin;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.github.pagehelper.PageInfo;
import com.fc.test.common.base.BaseController;
import com.fc.test.common.domain.AjaxResult;
import com.fc.test.model.auto.SysQuartzJobLog;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.SysQuartzJobLogService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * 定时任务日志Controller
* @ClassName: QuartzJobLogController
* @author fuce
* @date 2019-11-20 22:51
 */
@Api(value = "定时任务调度日志表")
@Controller
@RequestMapping("/SysQuartzJobLogController")
public class QuartzJobLogController extends BaseController{
	
	private String prefix = "admin/sysQuartzJobLog";
	@Autowired
	private SysQuartzJobLogService sysQuartzJobLogService;
	
	/**
	 * 展示跳转页面
	 * @param model
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午4:01:13
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@RequiresPermissions("gen:sysQuartzJobLog:view")
    public String view(ModelMap model)
    {	
		String str="定时任务调度日志表";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
	
	/**
	 * 定时任务调度日志list
	 * @param tablepar
	 * @param searchText
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午4:01:26
	 */
	//@Log(title = "定时任务调度日志表集合查询", action = "111")
	@ApiOperation(value = "分页查询", notes = "分页查询")
	@PostMapping("/list")
	@RequiresPermissions("gen:sysQuartzJobLog:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchText){
		PageInfo<SysQuartzJobLog> page=sysQuartzJobLogService.list(tablepar,searchText) ; 
		TableSplitResult<SysQuartzJobLog> result=new TableSplitResult<SysQuartzJobLog>(page.getPageNum(), page.getTotal(), page.getList()); 
		return  result;
	}
	
	/**
	 * 查看详情
	 * @param modelMap
	 * @return
	 * @author fuce
	 * @Date 2019年9月14日 下午11:50:42
	 */
	 @ApiOperation(value = "查看详情", notes = "查看详情")
	 @GetMapping("/detail/{id}")
     public String detail(@PathVariable("id") String id,ModelMap modelMap)
     {
		SysQuartzJobLog log= sysQuartzJobLogService.selectByPrimaryKey(id);
		modelMap.put("SysQuartzJobLog", log);
        return prefix + "/detail";
     }
	 

	
	/**
	 * 定时任务日志删除
	 * @param ids id集合
	 * @return
	 * @author fuce
	 * @Date 2019年11月20日 下午10:51:52
	 */
	//@Log(title = "定时任务调度日志表删除", action = "111")
	@ApiOperation(value = "定时任务日志删除", notes = "定时任务日志删除")
	@PostMapping("/remove")
	@RequiresPermissions("gen:sysQuartzJobLog:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=sysQuartzJobLogService.deleteByPrimaryKey(ids);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
    
    

	
}
