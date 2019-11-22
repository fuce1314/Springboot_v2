package com.fc.test.common.base;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.fc.test.common.domain.AjaxResult;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.service.*;
import com.fc.test.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

/**
 * web层通用数据处理
* @ClassName: BaseController
* @author fuce
* @date 2018年8月18日
*
 */
@Controller
public class BaseController
{
	//系统用户
	@Autowired
	public SysUserService sysUserService; 
	
	//系统角色
	@Autowired
	public SysRoleService sysRoleService; 
	
	//权限
	@Autowired
	public SysPermissionService sysPermissionService;
	
	//文件上传
	@Autowired
	public SysFileService sysFileService;
	
	//文件存储
	@Autowired
	public SysDatasService sysDatasService;
	
	//文件存储管理表
	@Autowired
	public SysFileDatasService sysFileDatasService;
	
	//日志操作
	@Autowired
	public SysOperLogService sysOperLogService;
	//公告
	@Autowired
	public SysNoticeService sysNoticeService;

	/*文件上传云库*/
    @Autowired
    public QiNiuCloudService qiNiuCloudService;
    /**
     * 将前台传递过来的日期格式的字符串，自动转化为Date类型
     */
    @InitBinder
    public void initBinder(WebDataBinder binder)
    {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }


    /**
     * 响应返回结果
     * 
     * @param rows 影响行数
     * @return 操作结果
     */
    protected AjaxResult toAjax(int rows)
    {
        return rows > 0 ? success() : error();
    }

    /**
     * 返回成功
     */
    public AjaxResult success()
    {
        return AjaxResult.success();
    }

    /**
     * 返回失败消息
     */
    public AjaxResult error()
    {
        return AjaxResult.error();
    }

    /**
     * 返回成功消息
     */
    public AjaxResult success(String message)
    {
        return AjaxResult.success(message);
    }
    

    /**
     * 返回失败消息
     */
    public AjaxResult error(String message)
    {
        return AjaxResult.error(message);
    }

    /**
     * 返回错误码消息
     */
    public AjaxResult error(int code, String message)
    {
        return AjaxResult.error(code, message);
    }
    
    /**
     * 返回object数据
     */
    public AjaxResult retobject(int code, Object  data)
    {
        return AjaxResult.successData(code, data);
    }

    /**
     * 页面跳转
     */
    public String redirect(String url)
    {
        return StringUtils.format("redirect:{}", url);
    }
    
    
    /**
     * 设置标题通用方法
     * @param model
     */
    public void setTitle(ModelMap map,TitleVo titleVo){
    	//标题
    	map.put("title",titleVo.getTitle());
    	map.put("parenttitle",titleVo.getParenttitle());
		//是否打开欢迎语
    	map.put("isMsg",titleVo.isMsg());
		//欢迎语
    	map.put("msgHTML",titleVo.getMsgHtml());
		//小控件
    	map.put("isControl",titleVo.isControl());
		map.put("isribbon", titleVo.isIsribbon());
    }

   
}
