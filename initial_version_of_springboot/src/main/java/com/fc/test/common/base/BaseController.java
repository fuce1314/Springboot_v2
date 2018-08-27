package com.fc.test.common.base;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.fc.test.common.domain.AjaxResult;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.util.StringUtils;

/**
 * web层通用数据处理
* @ClassName: BaseController
* @author fuce
* @date 2018年8月18日
*
 */
public class BaseController
{
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
    public void setTitle(Model model,TitleVo titleVo){
    	//标题
		model.addAttribute("title",titleVo.getTitle());
		model.addAttribute("parenttitle",titleVo.getParenttitle());
		//是否打开欢迎语
		model.addAttribute("isMsg",titleVo.isMsg());
		//欢迎语
		model.addAttribute("msgHTML",titleVo.getMsgHtml());
		//小控件
		model.addAttribute("isControl",titleVo.isControl());
		model.addAttribute("isribbon", titleVo.isIsribbon());
		System.out.println("x");
    }

   
}
