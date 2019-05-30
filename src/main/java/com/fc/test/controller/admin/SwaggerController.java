package com.fc.test.controller.admin;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fc.test.common.base.BaseController;
import com.fc.test.model.custom.TitleVo;

import io.swagger.annotations.Api;

@Controller
@Api(value = "SwaggerController")
@RequestMapping("SwaggerController")
public class SwaggerController  extends BaseController{

	//跳转页面参数
	private String prefix = "admin/swagger";
	
	@GetMapping("view")
	@RequiresPermissions("system:swagger:view")
    public String view(Model model)
    {	
		
		setTitle(model, new TitleVo("API文档", "swagger", false,"欢迎进入swagger页面", false, false));
        return prefix + "/list";
    }

	

}
