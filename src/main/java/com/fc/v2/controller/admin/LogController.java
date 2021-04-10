package com.fc.v2.controller.admin;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.auto.TsysOperLog;
import com.fc.v2.model.custom.Tablepar;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * 日志记录controller
 * @author fuce 
 * @date: 2018年9月30日 下午9:28:31
 */
@Controller
@Api(value = "日志记录")
@RequestMapping("/LogController")
public class LogController extends BaseController{

	//跳转页面参数
	private final String prefix = "admin/log";
	
	/**
	 * 日志记录展示页面
	 * @param model
	 * @return
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@RequiresPermissions("system:log:view")
    public String view(ModelMap model)
    {
        return prefix + "/list";
    }
	
	/**
	 * 文件列表
	 * @param tablepar
	 * @param searchText 搜索字符
	 * @return
	 */
	@ApiOperation(value = "分页查询", notes = "分页查询")
	@GetMapping("/list")
	@RequiresPermissions("system:log:list")
	@ResponseBody
	public ResultTable list(Tablepar tablepar, String searchText){
		PageInfo<TsysOperLog> page=sysOperLogService.list(tablepar,searchText) ; 
		return pageTable(page.getList(),page.getTotal());
	}

	
	/**
	 * 删除日志
	 * @param ids
	 * @return
	 */
	//@Log(title = "删除日志", action = "1")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
	@RequiresPermissions("system:log:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=sysOperLogService.deleteByPrimaryKey(ids);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	

    
    
}
