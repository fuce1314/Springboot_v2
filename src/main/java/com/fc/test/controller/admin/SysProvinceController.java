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
import com.fc.test.model.auto.SysProvince;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.SysProvinceService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * 省份Controller
 * @ClassName: SysProvinceController
 * @author fuce
 * @date 2019-11-20 22:32
 */
@Api(value = "省份表")
@Controller
@RequestMapping("/SysProvinceController")
public class SysProvinceController extends BaseController{
	
	private String prefix = "admin/province/sysProvince";
	@Autowired
	private SysProvinceService sysProvinceService;
	/**
	 * 展示页面跳转
	 * @param model
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午4:10:48
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@RequiresPermissions("gen:sysProvince:view")
    public String view(ModelMap model)
    {	
		String str="省份表";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
	/**
	 *list查询
	 * @param tablepar
	 * @param searchText
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午4:10:39
	 */
	//@Log(title = "省份表集合查询", action = "111")
	@ApiOperation(value = "分页查询", notes = "分页查询")
	@PostMapping("/list")
	@RequiresPermissions("gen:sysProvince:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchText){
		PageInfo<SysProvince> page=sysProvinceService.list(tablepar,searchText) ; 
		TableSplitResult<SysProvince> result=new TableSplitResult<SysProvince>(page.getPageNum(), page.getTotal(), page.getList()); 
		return  result;
	}
	/**
	 * 新增跳转
	 * @param modelMap
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午4:10:20
	 */
	@ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    public String add(ModelMap modelMap)
    {
        return prefix + "/add";
    }
    
	/**
	 * 新增保存
	 * @param sysProvince
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午4:10:26
	 */
	//@Log(title = "省份表新增", action = "111")
    @ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
	@RequiresPermissions("gen:sysProvince:add")
	@ResponseBody
	public AjaxResult add(SysProvince sysProvince){
		int b=sysProvinceService.insertSelective(sysProvince);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 删除
	 * @param ids
	 * @return
	 */
	//@Log(title = "省份表删除", action = "111")
	@ApiOperation(value = "删除", notes = "删除")
	@PostMapping("/remove")
	@RequiresPermissions("gen:sysProvince:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=sysProvinceService.deleteByPrimaryKey(ids);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 检查
	 * @param tsysUser
	 * @return
	 */
	@ApiOperation(value = "检查Name唯一", notes = "检查Name唯一")
	@PostMapping("/checkNameUnique")
	@ResponseBody
	public int checkNameUnique(SysProvince sysProvince){
		int b=sysProvinceService.checkNameUnique(sysProvince);
		if(b>0){
			return 1;
		}else{
			return 0;
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
    public String edit(@PathVariable("id") Integer id, ModelMap mmap)
    {
        mmap.put("SysProvince", sysProvinceService.selectByPrimaryKey(id));

        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "省份表修改", action = "111")
	@ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("gen:sysProvince:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysProvince record)
    {
        return toAjax(sysProvinceService.updateByPrimaryKeySelective(record));
    }

    
    

	
}
