package com.fc.test.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.fc.test.common.domain.AjaxResult;

/**
 * 该接口为了前后端分离or手机端服务不用登录的接口  访问地址:localhot:8080/ApiController/test
 * 如何还需要其他 接口不登陆就能访问：ShiroFilterMapFactory.java里面配置开放自己的controller
 * @ClassName: ApiController
 * @author fuce
 * @date 2020-04-15 22:59
 */
@Controller
@RequestMapping("/ApiController")
public class ApiController {
	
	@GetMapping("test")
	@ResponseBody
	public AjaxResult test() {

		return AjaxResult.success();
	}
}
