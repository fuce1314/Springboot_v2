package com.fc.v2.controller.admin;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.conf.oss.OssTemplate;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.auto.TSysEmail;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.service.TSysEmailService;
import com.fc.v2.util.SimpleEmailUtil;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * 邮件发送Controller
 * @ClassName: EmailController
 * @author fuce
 * @date 2019-06-10 00:39
 * @version V1.0
 */
@Api(value = "邮件发送Controller")
@Controller
@RequestMapping("/EmailController")
public class EmailController extends BaseController{
		
	private final String prefix = "admin/email";
	
	@Autowired
	private TSysEmailService tSysEmailService;
	
	@Autowired
	private  OssTemplate template;
	
	/**
	 * 分页展示页面
	 * @param model
	 * @return String
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@RequiresPermissions("system:email:view")
    public String view(ModelMap model)
    {
        return prefix + "/list";
    }

	/**
	 * 分页list页面
	 * @param tablepar
	 * @param searchText
	 * @return
	 */
	@ApiOperation(value = "分页查询", notes = "分页查询")
	@GetMapping("/list")
	@RequiresPermissions("system:email:list")
	@ResponseBody
	public ResultTable list(Tablepar tablepar, String searchText){
		PageInfo<TSysEmail> page=tSysEmailService.list(tablepar,searchText) ; 
		return pageTable(page.getList(),page.getTotal());
	}
	
	/**
     * 新增跳转
     */
	@ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    public String add(ModelMap modelMap)
    {
		modelMap.put("BucketName",template.getOssProperties().getBucketName());
        return prefix + "/add";
    }
	
	/**
	 * 新增
	 * @param tSysEmail
	 * @param model
	 * @return
	 * @throws Exception
	 * @author fuce
	 */
	//@Log(title = "新增邮件", action = "1")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
	@RequiresPermissions("system:email:add")
	@ResponseBody
	public AjaxResult add(@RequestBody TSysEmail tSysEmail,Model model) throws Exception{
		int b=tSysEmailService.insertSelective(tSysEmail);
		if(b>0){
			//发送邮件
			SimpleEmailUtil.sendEmail(tSysEmail);
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 删除邮件
	 * @param ids
	 * @return
	 */
	//@Log(title = "删除邮件", action = "1")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
	@RequiresPermissions("system:email:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=tSysEmailService.deleteByPrimaryKey(ids);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 检查邮件同名
	 * @param tSysEmail
	 * @return
	 */
	@ApiOperation(value = "检查Name唯一", notes = "检查Name唯一")
	@PostMapping("/checkNameUnique")
	@ResponseBody
	public int checkNameUnique(TSysEmail tSysEmail){
		int b=tSysEmailService.checkNameUnique(tSysEmail);
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
    public String edit(@PathVariable("id") String id, ModelMap mmap)
    {
		mmap.put("BucketName",template.getOssProperties().getBucketName());
        mmap.put("TSysEmail", tSysEmailService.selectByPrimaryKey(id));
        return prefix + "/view";
    }


}
