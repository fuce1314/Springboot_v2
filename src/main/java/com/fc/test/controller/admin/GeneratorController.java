package com.fc.test.controller.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.fc.test.common.base.BaseController;
import com.fc.test.model.custom.GenVo;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.model.custom.TsysTables;
import com.fc.test.service.GeneratorService;
import com.github.pagehelper.PageInfo;


/**
 * 自动生成Controller_目前废弃
* @Title: GeneratorController.java 
* @Package com.fc.test.controller.admin 
* @author fuce  
* @date 2019年5月9日 上午12:40:47 
* @version V1.0   
 */
@Controller
@RequestMapping("/generatorController")
public class GeneratorController extends BaseController{
	@Autowired
	private GeneratorService generatorService;
	
	private String prefix = "admin/generator";
	
	@GetMapping("/view")
	@RequiresPermissions("system:generator:view")
    public String view(ModelMap model)
    {	
		String str="自动生成";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
	
	
	@PostMapping("/list")
	@RequiresPermissions("system:generator:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchTxt){
		PageInfo<TsysTables> page=generatorService.list(tablepar,searchTxt) ; 
		TableSplitResult<TsysTables> result=new TableSplitResult<TsysTables>(page.getPageNum(), page.getTotal(), page.getList()); 
		return  result;
	}
	
	
	/**
	 * 生成代码
	 */
	@GetMapping("/code")
	public void code(String tables,GenVo genVo, HttpServletResponse response) throws IOException{
		System.out.println(genVo);
		byte[] data = generatorService.generatorCode(tables.split(","),genVo);
		response.reset();  
        response.setHeader("Content-Disposition", "attachment; filename=\"SpringBootV2.zip\"");  
        response.addHeader("Content-Length", "" + data.length);  
        response.setContentType("application/octet-stream; charset=UTF-8");  
        
        IOUtils.write(data, response.getOutputStream());  
	}
}
