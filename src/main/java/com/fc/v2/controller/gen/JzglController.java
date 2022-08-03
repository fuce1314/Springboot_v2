package com.fc.v2.controller.gen;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.custom.JzglVo;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.satoken.SaTokenUtil;
import com.fc.v2.model.auto.Cpgh;
import com.fc.v2.model.auto.Jggl;
import com.fc.v2.model.auto.Jzgl;
import com.fc.v2.service.CpghService;
import com.fc.v2.service.JgglService;
import com.fc.v2.service.JzglService;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import cn.dev33.satoken.annotation.SaCheckPermission;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.fc.v2.common.conf.oss.OssConfig;

/**
 * 介质管理Controller
 * @ClassName: JzglController
 * @author fuce
 * @date 2022-02-24 09:47:19
 */
@Api(value = "介质管理")
@Controller
@RequestMapping("/JzglController")
public class JzglController extends BaseController{
	
	private String prefix = "gen/jzgl";
	
	@Autowired
	private JzglService jzglService;
	
	@Autowired
	private JgglService jgglService;
	@Autowired
	private CpghService cpghService;
	
	
	/**
	 * 介质管理页面展示
	 * @param model
	 * @return String
	 * @author fuce
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@SaCheckPermission("gen:jzgl:view")
    @OssConfig
    public String view(ModelMap model)
    {
        return prefix + "/list";
    }
	
	/**
	 * 批量借阅跳转
	 * @param model
	 * @return String
	 * @author fuce
	 */
	@ApiOperation(value = "批量借阅跳转", notes = "批量借阅跳转")
	@GetMapping("/batchjy")
	@SaCheckPermission("gen:jzgl:view")
    @OssConfig
    public String batchjy(ModelMap model)
    {
		List<Jzgl> jzgls=jzglService.selectByExample(null);
		model.put("jzgls", jzgls);
        return prefix + "/batchjy";
    }
	
	/**
	 * 
	 * @Title: batchbs
	 * @author fuce
	 * @date 2022年3月1日
	 * @param @param model
	 * @param @return 参数
	 * @return String 返回类型
	 * @throws
	 */
	@ApiOperation(value = "批量报损跳转", notes = "批量报损跳转")
	@GetMapping("/batchbs")
	@SaCheckPermission("gen:jzgl:view")
    public String batchbs(ModelMap model)
    {
		List<Jzgl> jzgls=jzglService.selectByExample(null);
		model.put("jzgls", jzgls);
        return prefix + "/batchbs";
    }
	
	
	/**
	 * list集合
	 * @param tablepar
	 * @param searchText
	 * @return
	 */
	//@Log(title = "介质管理", action = "111")
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/list")
	@SaCheckPermission("gen:jzgl:list")
	@ResponseBody
	public ResultTable list(Tablepar tablepar,Jzgl jzgl,HttpServletRequest request){
		String dpState=request.getParameter("dpState");
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("dpState", dpState);
		PageInfo<JzglVo> page=jzglService.list(tablepar,jzgl,map) ; 
		return pageTable(page.getList(),page.getTotal());
	}
	
	/**
     * 新增跳转
     */
	@ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    @OssConfig
    public String add(ModelMap modelMap)
    {
		List<Jggl> jggls=jgglService.selectByExample(null);
		modelMap.put("jggls", jggls);
		List<Cpgh> cpghs=cpghService.selectByExample(null);
		modelMap.put("cpghs", cpghs);
        return prefix + "/add";
    }
	
    /**
     * 新增保存
     * @param 
     * @return
     */
	//@Log(title = "介质管理新增", action = "111")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
	@SaCheckPermission("gen:jzgl:add")
	@ResponseBody
	public AjaxResult add(Jzgl jzgl){
		jzgl.setCreateUserId(SaTokenUtil.getUserId());
		jzgl.setCreateUserName(SaTokenUtil.getUser().getUsername());
		int b=jzglService.insertSelective(jzgl);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 介质管理删除
	 * @param ids
	 * @return
	 */
	//@Log(title = "介质管理删除", action = "111")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
	@SaCheckPermission("gen:jzgl:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=jzglService.deleteByPrimaryKey(ids);
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
    @OssConfig
    public String edit(@PathVariable("id") String id, ModelMap map)
    {
        map.put("Jzgl", jzglService.selectByPrimaryKey(id));
        List<Jggl> jggls=jgglService.selectByExample(null);
        map.put("jggls", jggls);
        List<Cpgh> cpghs=cpghService.selectByExample(null);
        map.put("cpghs", cpghs);
        return prefix + "/edit";
    }
	
	/**
     * 修改保存
     */
    //@Log(title = "介质管理修改", action = "111")
	@ApiOperation(value = "修改保存", notes = "修改保存")
    @SaCheckPermission("gen:jzgl:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Jzgl jzgl)
    {
        return toAjax(jzglService.updateByPrimaryKeySelective(jzgl));
    }
    
    
    /**
	 * 修改状态
	 * @param record
	 * @return
	 */
    @PutMapping("/updateVisible")
	@ResponseBody
    public AjaxResult updateVisible(@RequestBody Jzgl jzgl){
		int i=jzglService.updateVisible(jzgl);
		return toAjax(i);
	}

    
    

	
}
