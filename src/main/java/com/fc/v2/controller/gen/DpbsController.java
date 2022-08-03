package com.fc.v2.controller.gen;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.custom.JzglVo;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.model.auto.Dpbs;
import com.fc.v2.model.auto.Dpjy;
import com.fc.v2.model.auto.Jzgl;
import com.fc.v2.service.DpbsService;
import com.fc.v2.service.JzglService;
import com.fc.v2.util.StringUtils;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import cn.dev33.satoken.annotation.SaCheckPermission;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * 定盘报损Controller
 * @ClassName: DpbsController
 * @author fuce
 * @date 2022-02-25 16:39:32
 */
@Api(value = "定盘报损")
@Controller
@RequestMapping("/DpbsController")
public class DpbsController extends BaseController{
	
	private String prefix = "gen/dpbs";
	
	@Autowired
	private DpbsService dpbsService;
	
	@Autowired
	private JzglService jzglService;
	/**
	 * 定盘报损页面展示
	 * @param model
	 * @return String
	 * @author fuce
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@SaCheckPermission("gen:dpbs:view")
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
	//@Log(title = "定盘报损", action = "111")
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/list")
	@SaCheckPermission("gen:dpbs:list")
	@ResponseBody
	public ResultTable list(Tablepar tablepar,Dpbs dpbs){
		PageInfo<Dpbs> page=dpbsService.list(tablepar,dpbs) ; 
		return pageTable(page.getList(),page.getTotal());
	}
	
	/**
     * 新增跳转
     */
	@ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    public String add(ModelMap modelMap)
    {
		List<Jzgl> jzgls=jzglService.selectByExample(null);
		modelMap.put("jzgls", jzgls);
        return prefix + "/add";
    }
	
	
	@ApiOperation(value = "批量新增", notes = "批量新增")
	@PostMapping("/batchAdd")
	@SaCheckPermission("gen:dpbs:add")
	@ResponseBody
    public AjaxResult batchAdd(@RequestParam(value = "jzIds[]")String[] jzIds,Dpbs dpbs)
    {
		
		dpbs.setJzIds(StringUtils.join(jzIds,","));
		int b=dpbsService.insertSelective(dpbs);
		if(b>0){
			return success();
		}else{
			return error();
		}
    }
	
    /**
     * 新增保存
     * @param 
     * @return
     */
	//@Log(title = "定盘报损新增", action = "111")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
	@SaCheckPermission("gen:dpbs:add")
	@ResponseBody
	public AjaxResult add(Dpbs dpbs){
		int b=dpbsService.insertSelective(dpbs);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 定盘报损删除
	 * @param ids
	 * @return
	 */
	//@Log(title = "定盘报损删除", action = "111")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
	@SaCheckPermission("gen:dpbs:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=dpbsService.deleteByPrimaryKey(ids);
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
        map.put("Dpbs", dpbsService.selectByPrimaryKey(id));
        List<Jzgl> jzgls=jzglService.selectByExample(null);
		map.put("jzgls", jzgls);
        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "定盘报损修改", action = "111")
	@ApiOperation(value = "修改保存", notes = "修改保存")
    @SaCheckPermission("gen:dpbs:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Dpbs dpbs)
    {
        return toAjax(dpbsService.updateByPrimaryKeySelective(dpbs));
    }
    
    
    /**
	 * 修改状态
	 * @param record
	 * @return
	 */
    @PutMapping("/updateVisible")
	@ResponseBody
    public AjaxResult updateVisible(@RequestBody Dpbs dpbs){
		int i=dpbsService.updateVisible(dpbs);
		return toAjax(i);
	}

    
    
    
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/batchViewList/{id}")
	@SaCheckPermission("gen:dpbs:view")
    public String batchViewList(ModelMap model,@PathVariable("id") String id)
    {
    	model.put("id", id);
        return prefix + "/batchlist";
    }
    
	
    
    
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/batchView/{id}")
	@SaCheckPermission("gen:dpbs:view")
    @ResponseBody
    public ResultTable batchView(ModelMap model,@PathVariable("id") String id)
    {
    	Dpbs dpbs=dpbsService.selectByPrimaryKey(id);
    	List<JzglVo> jzgls=jzglService.batchViewIds(dpbs.getJzIds());
    	return pageTable(jzgls,jzgls.size());
    }

    

	
}
