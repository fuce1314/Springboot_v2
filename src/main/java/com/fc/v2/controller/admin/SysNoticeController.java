 package com.fc.v2.controller.admin;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.auto.SysNotice;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.service.SysNoticeService;
import com.fc.v2.shiro.util.ShiroUtils;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * 公告Controller
 * @ClassName: SysNoticeController
 * @author fuce
 * @date 2019-11-20 22:31
 */
@Api(value = "公告")
@Controller
@RequestMapping("/SysNoticeController")
public class SysNoticeController extends BaseController{
	
	private final String prefix = "admin/sysNotice";
	@Autowired
	private SysNoticeService sysNoticeService;
	
	
	/**
	 * 展示页面跳转
	 * @param model
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午4:09:24
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@RequiresPermissions("gen:sysNotice:view")
    public String view(ModelMap model)
    {
		return prefix + "/list";
    }
	/**
	 * list页面
	 * @param tablepar
	 * @param searchText
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午4:09:35
	 */
	//@Log(title = "公告集合查询", action = "111")
	@ApiOperation(value = "分页查询", notes = "分页查询")
	@GetMapping("/list")
	@RequiresPermissions("gen:sysNotice:list")
	@ResponseBody
	public ResultTable list(Tablepar tablepar, String searchText){
		PageInfo<SysNotice> page=sysNoticeService.list(tablepar,searchText) ; 
		return pageTable(page.getList(),page.getTotal());
	}
	
	
	/**
	 * 对应的用户的展示页面
	 * @param model
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午4:09:42
	 */
	@ApiOperation(value = "对应的用户的展示页面", notes = "对应的用户的展示页面")
	@GetMapping("/viewUser")
    public String viewUser(ModelMap model)
    {
		return prefix + "/list_view";
    }
	/**
	 * 根据公告id查询跳转到公告详情页面
	 * @param tablepar
	 * @param searchText
	 * @return
	 */
	@ApiOperation(value = "table根据公告id查询跳转到公告详情页面", notes = "table根据公告id查询跳转到公告详情页面")
	@PostMapping("/viewUserlist")
	@ResponseBody
    public ResultTable viewUserlist(Tablepar tablepar,String searchText)
    {
		PageInfo<SysNotice> page=sysNoticeService.list(ShiroUtils.getUser(), tablepar, searchText);
		return pageTable(page.getList(),page.getTotal());
    }
	
	/**
	 * 新增跳转
	 * @param modelMap
	 * @return
	 */
	@ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    public String add(ModelMap modelMap)
    {
        return prefix + "/add";
    }
	/**
	 * 新增保存
	 * @param sysNotice
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午4:07:09
	 */
	//@Log(title = "公告新增", action = "111")
    @ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
	@RequiresPermissions("gen:sysNotice:add")
	@ResponseBody
	public AjaxResult add(SysNotice sysNotice){
		int b=sysNoticeService.insertSelective(sysNotice);
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
	 **/
	//@Log(title = "公告删除", action = "111")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
	@RequiresPermissions("gen:sysNotice:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=sysNoticeService.deleteByPrimaryKey(ids);
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
	public int checkNameUnique(SysNotice sysNotice){
		int b=sysNoticeService.checkNameUnique(sysNotice);
		if(b>0){
			return 1;
		}else{
			return 0;
		}
	}
	
	/**
	 * 根据公告id查询跳转到公告详情页面
	 * @param id
	 * @param mmap
	 * @return
	 */
	//@Log(title = "字典数据表删除", action = "1")
	@ApiOperation(value = "根据公告id查询跳转到公告详情页面", notes = " 根据公告id查询跳转到公告详情页面")
	@GetMapping("/viewinfo/{id}")
    public String viewinfo(@PathVariable("id") String id,ModelMap mmap)
    {
		SysNotice notice= sysNoticeService.selectByPrimaryKey(id);
		mmap.addAttribute("notice", notice);
		//把推送给该用户的公告设置为已读
		sysNoticeService.editUserState(id);
        return prefix + "/view";
    }
	
	
	/**
	 * 修改跳转
	 * @param id
	 * @param mmap
	 * @return
	 */
	@ApiOperation(value = "修改跳转", notes = "修改跳转")
	@GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap)
    {
        mmap.put("SysNotice", sysNoticeService.selectByPrimaryKey(id));

        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "公告修改", action = "111")
	@ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("gen:sysNotice:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysNotice record)
    {
        return toAjax(sysNoticeService.updateByPrimaryKeySelective(record));
    }

    
    

	
}
