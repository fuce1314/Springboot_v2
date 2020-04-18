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
import com.fc.test.model.auto.SysNotice;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.SysNoticeService;
import com.fc.test.shiro.util.ShiroUtils;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

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
	
	private String prefix = "admin/sysNotice";
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
		String str="公告";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
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
	@PostMapping("/list")
	@RequiresPermissions("gen:sysNotice:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchText){
		PageInfo<SysNotice> page=sysNoticeService.list(tablepar,searchText) ; 
		TableSplitResult<SysNotice> result=new TableSplitResult<SysNotice>(page.getPageNum(), page.getTotal(), page.getList()); 
		return  result;
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
		String str="公告";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list_view";
    }
	/**
	 * 根据公告id查询跳转到公告详情页面
	 * @param id
	 * @param mmap
	 * @return
	 */
	@ApiOperation(value = "table根据公告id查询跳转到公告详情页面", notes = "table根据公告id查询跳转到公告详情页面")
	@PostMapping("/viewUserlist")
	@ResponseBody
    public Object viewUserlist(Tablepar tablepar,String searchText)
    {
        
		PageInfo<SysNotice> page=sysNoticeService.list(ShiroUtils.getUser(), tablepar, searchText);
		TableSplitResult<SysNotice> result=new TableSplitResult<SysNotice>(page.getPageNum(), page.getTotal(), page.getList()); 
		return  result;
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
	@PostMapping("/remove")
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
        
		String str="公告";
		setTitle(mmap, new TitleVo("详情", str+"列表", true,"欢迎进入"+str+"详情页面", true, false));
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
