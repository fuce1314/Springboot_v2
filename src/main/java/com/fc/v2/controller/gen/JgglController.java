package com.fc.v2.controller.gen;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.model.auto.Jggl;
import com.fc.v2.service.JgglService;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import cn.dev33.satoken.annotation.SaCheckPermission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * 机柜管理Controller
 * @ClassName: JgglController
 * @author fuce
 * @date 2022-02-23 15:30:30
 */
@Api(value = "机柜管理")
@Controller
@RequestMapping("/JgglController")
public class JgglController extends BaseController{
	
	private String prefix = "gen/jggl";
	
	@Autowired
	private JgglService jgglService;
	
	
	/**
	 * 机柜管理页面展示
	 * @param model
	 * @return String
	 * @author fuce
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@SaCheckPermission("gen:jggl:view")
    public String view(ModelMap model)
    {
        return prefix + "/list";
    }
	
	/**
	 * list集合
	 * @param tablepar
	 * @param searchText
	 * @return
	 */
	//@Log(title = "机柜管理", action = "111")
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/list")
	@SaCheckPermission("gen:jggl:list")
	@ResponseBody
	public ResultTable list(Tablepar tablepar,Jggl jggl){
		PageInfo<Jggl> page=jgglService.list(tablepar,jggl) ; 
		return pageTable(page.getList(),page.getTotal());
	}
	
	/**
     * 新增跳转
     */
	@ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    public String add(ModelMap modelMap)
    {
        return prefix + "/add";
    }
	
    /**
     * 新增保存
     * @param 
     * @return
     */
	//@Log(title = "机柜管理新增", action = "111")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
	@SaCheckPermission("gen:jggl:add")
	@ResponseBody
	public AjaxResult add(Jggl jggl){
		int b=jgglService.insertSelective(jggl);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 机柜管理删除
	 * @param ids
	 * @return
	 */
	//@Log(title = "机柜管理删除", action = "111")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
	@SaCheckPermission("gen:jggl:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=jgglService.deleteByPrimaryKey(ids);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	
	/**
	 * 修改跳转
	 * @param id
	 * @param mmap
	 * @return
	 */
	@ApiOperation(value = "修改跳转", notes = "修改跳转")
	@GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap map)
    {
        map.put("Jggl", jgglService.selectByPrimaryKey(id));

        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "机柜管理修改", action = "111")
	@ApiOperation(value = "修改保存", notes = "修改保存")
    @SaCheckPermission("gen:jggl:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Jggl jggl)
    {
        return toAjax(jgglService.updateByPrimaryKeySelective(jggl));
    }
    
    
    /**
	 * 修改状态
	 * @param record
	 * @return
	 */
    @PutMapping("/updateVisible")
	@ResponseBody
    public AjaxResult updateVisible(@RequestBody Jggl jggl){
		int i=jgglService.updateVisible(jggl);
		return toAjax(i);
	}

    
    

	
}
