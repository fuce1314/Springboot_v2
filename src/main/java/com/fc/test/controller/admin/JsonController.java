package com.fc.test.controller.admin;

import com.fc.test.common.base.BaseController;
import com.fc.test.model.custom.TitleVo;
import io.swagger.annotations.Api;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * jsonController 
 * @ClassName: JsonController
 * @author fuce
 * @date 2019-09-21 17:59
 */
@Api(value = "Json格式化")
@Controller
@RequestMapping("/Json")
public class JsonController extends BaseController{

	private String prefix = "admin/json";

	/**
	 * json格式化展示页面
	 * @param model
	 * @return
	 */
	@GetMapping("/view")
    public String view(ModelMap model)
    {	
		String str="json";
		setTitle(model, new TitleVo("json格式化", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
	
}
