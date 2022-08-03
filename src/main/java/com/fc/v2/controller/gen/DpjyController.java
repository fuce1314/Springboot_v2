package com.fc.v2.controller.gen;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.custom.JzglVo;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.model.auto.Dpjy;
import com.fc.v2.model.auto.Jzgl;
import com.fc.v2.model.auto.TsysUser;
import com.fc.v2.service.DpjyService;
import com.fc.v2.service.JzglService;
import com.fc.v2.service.SysUserService;
import com.fc.v2.util.StringUtils;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import cn.dev33.satoken.annotation.SaCheckPermission;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * 定盘借阅Controller
 * @ClassName: DpjyController
 * @author fuce
 * @date 2022-02-26 23:08:44
 */
@Api(value = "定盘借阅")
@Controller
@RequestMapping("/DpjyController")
public class DpjyController extends BaseController{
	
	private String prefix = "gen/dpjy";
	
	@Autowired
	private DpjyService dpjyService;
	@Autowired
	private SysUserService sysUserService;
	@Autowired
	private JzglService jzglService;
	
	
	/**
	 * 定盘借阅页面展示
	 * @param model
	 * @return String
	 * @author fuce
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@SaCheckPermission("gen:dpjy:view")
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
	//@Log(title = "定盘借阅", action = "111")
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/list")
	@SaCheckPermission("gen:dpjy:list")
	@ResponseBody
	public ResultTable list(Tablepar tablepar,Dpjy dpjy){
		PageInfo<Dpjy> page=dpjyService.list(tablepar,dpjy) ; 
		return pageTable(page.getList(),page.getTotal());
	}
	
	/**
     * 新增跳转
     */
	@ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    public String add(ModelMap modelMap)
    {
		List<TsysUser> users=sysUserService.selectByExample(null);
		modelMap.put("users", users);
		List<Jzgl> jzgls=jzglService.selectByExample(null);
		modelMap.put("jzgls", jzgls);
        return prefix + "/add";
    }
	
    /**
     * 新增保存
     * @param 
     * @return
     */
	//@Log(title = "定盘借阅新增", action = "111")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
	@SaCheckPermission("gen:dpjy:add")
	@ResponseBody
	public AjaxResult add(Dpjy dpjy){
		dpjy.setJyrq(new Date());
		int b=dpjyService.insertSelective(dpjy);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	
	/**
     * 批量保存
     * @param 
     * @return
     */
	//@Log(title = "定盘借阅新增", action = "111")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/batchAdd")
	@SaCheckPermission("gen:dpjy:add")
	@ResponseBody
	public AjaxResult batchAdd(@RequestParam(value = "jzIds[]")String[] jzIds,Dpjy dpjy){
		
		dpjy.setJyrq(new Date());
		dpjy.setJzIds(StringUtils.join(jzIds,","));
		int b=dpjyService.insertSelective(dpjy);
			
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 定盘借阅删除
	 * @param ids
	 * @return
	 */
	//@Log(title = "定盘借阅删除", action = "111")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
	@SaCheckPermission("gen:dpjy:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=dpjyService.deleteByPrimaryKey(ids);
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
        map.put("Dpjy", dpjyService.selectByPrimaryKey(id));
        List<TsysUser> users=sysUserService.selectByExample(null);
		map.put("users", users);
		List<Jzgl> jzgls=jzglService.selectByExample(null);
		map.put("jzgls", jzgls);

        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "定盘借阅修改", action = "111")
	@ApiOperation(value = "修改保存", notes = "修改保存")
    @SaCheckPermission("gen:dpjy:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestParam(value = "jzIds[]")String[] jzIds ,Dpjy dpjy)
    {
		dpjy.setJzIds(StringUtils.join(jzIds,","));
        return toAjax(dpjyService.updateByPrimaryKeySelective(dpjy));
    }
    
    
    /**
	 * 修改状态
	 * @param record
	 * @return
	 */
    @PutMapping("/updateVisible")
	@ResponseBody
    public AjaxResult updateVisible(@RequestBody Dpjy dpjy){
		int i=dpjyService.updateVisible(dpjy);
		return toAjax(i);
	}
    
    
    
    
    
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/batchViewList/{id}")
	@SaCheckPermission("gen:dpjy:view")
    public String batchViewList(ModelMap model,@PathVariable("id") String id)
    {
    	model.put("id", id);
        return prefix + "/batchlist";
    }
    
	
    
    
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/batchView/{id}")
	@SaCheckPermission("gen:dpjy:view")
    @ResponseBody
    public ResultTable batchView(ModelMap model,@PathVariable("id") String id)
    {
    	Dpjy dpjy=dpjyService.selectByPrimaryKey(id);
    	List<JzglVo> jzgls=jzglService.batchViewIds(dpjy.getJzIds());
    	return pageTable(jzgls,jzgls.size());
    }

    
    

	
}
