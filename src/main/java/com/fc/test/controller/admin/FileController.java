package com.fc.test.controller.admin;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import io.swagger.annotations.Api;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.fc.test.common.base.BaseController;
import com.fc.test.common.conf.V2Config;
import com.fc.test.common.domain.AjaxResult;
import com.fc.test.common.file.FileUtils;
import com.fc.test.model.auto.TsysDatas;
import com.fc.test.model.auto.TsysFile;
import com.fc.test.model.custom.TableSplitResult;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.TitleVo;
import com.github.pagehelper.PageInfo;

/**
 * 文件上传controller
 * @author fuce 
 * @date: 2018年9月16日 下午4:23:50
 */
@Controller
@Api(value = "文件上传")
@RequestMapping("FileController")
public class FileController extends BaseController{

	//跳转页面参数
	private String prefix = "admin/file";
	
	@GetMapping("view")
	@RequiresPermissions("system:file:view")
    public String view(Model model)
    {	
		String str="上传图片";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
	
	/**
	 * 文件列表
	 * @param tablepar
	 * @param searchTxt 搜索字符
	 * @return
	 */
	@PostMapping("list")
	@RequiresPermissions("system:file:list")
	@ResponseBody
	public Object list(Tablepar tablepar,String searchTxt){
		PageInfo<TsysFile> page=sysFileService.list(tablepar,searchTxt) ; 
		TableSplitResult<TsysFile> result=new TableSplitResult<TsysFile>(page.getPageNum(), page.getTotal(), page.getList()); 
		return  result;
	}
	
	/**
     * 新增文件
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }
	
    
    
    /**
     * 上传文件
     */
    @PostMapping("/upload")
    @ResponseBody
    public AjaxResult updateAvatar(@RequestParam("file") MultipartFile file)
    {
        try
        {
            if (!file.isEmpty())
            {
                //插入文件存储表
            	String id=sysDatasService.insertSelective(file);
                if(id!=null){
                	 return AjaxResult.successData(200, id);
                }
            }
            return error();
        }
        catch (Exception e)
        {
            return error(e.getMessage());
        }
    }
	
    /**
     * 文件添加
     * @param file
     * @return
     */
	@PostMapping("add")
	@RequiresPermissions("system:file:add")
	@ResponseBody
	public AjaxResult add(TsysFile file,String dataId){
		int b=sysFileService.insertSelective(file,dataId);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 删除文件
	 * @param ids
	 * @return
	 */
	@PostMapping("remove")
	@RequiresPermissions("system:file:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=sysFileService.deleteByPrimaryKey(ids);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	
	/**
	 * 删除本地文件
	 * @param ids
	 * @return
	 */
	@PostMapping("del_file")
	@ResponseBody
	public AjaxResult del_file(String ids){
		int b=sysFileService.deleteBydataFile(ids);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	
	/**
	 * 检查文件名字
	 * @param tsysFile
	 * @return
	 */
	@PostMapping("checkNameUnique")
	@ResponseBody
	public int checkNameUnique(TsysFile tsysFile){
		int b=sysFileService.checkNameUnique(tsysFile);
		if(b>0){
			return 1;
		}else{
			return 0;
		}
	}
	
	
	/**
	 * 修改文件
	 * @param id
	 * @param mmap
	 * @return
	 */
	@GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap)
    {
        mmap.put("tsysFile", sysFileService.selectByPrimaryKey(id));
        return prefix + "/edit";
    }
	
	/**
     * 修改保存文件
     */
    @RequiresPermissions("system:user:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TsysFile tsysFile,String dataId)
    {
        return toAjax(sysFileService.updateByPrimaryKey(tsysFile,dataId));
    }
    
    /**
     * 展示文件跳转页面
     */
    @GetMapping("/viewfile/{id}")
    public String viewfile(@PathVariable("id") String id,ModelMap mmap){
    	if("Y".equals(V2Config.getIsstatic())) {//为静态目录存放的时候
    		mmap.put("is_static","Y");
    	}else {//为自定义存放目录的时候
    		mmap.put("is_static","N");
    	}
    	mmap.put("tsysDatas",sysFileDatasService.queryfileID(id));
        return prefix + "/viewfile";
    }
    
    /**
     * 此功能为application.yml 下面的isstatic为N 时候需要的
     * 逻辑为：根据数据库文件存放地址，读取图片流放入到<ima src>里面展示
     */
    @GetMapping("/viewImg/{id}")
    public void viewIMG(@PathVariable("id") String id,HttpServletRequest request,HttpServletResponse response){
    	TsysDatas datas= sysDatasService.selectByPrimaryKey(id);
    	try {
			FileUtils.readIMGTohtml(request, response, datas.getFilePath());
		} catch (IOException e) {
			e.printStackTrace();
		}
    }
    
    
}
