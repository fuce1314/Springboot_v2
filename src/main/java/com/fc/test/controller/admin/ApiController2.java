package com.fc.test.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.fc.test.common.domain.AjaxResult;
import com.fc.test.shiro.util.ShiroUtils;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * token测试   
 * 
 * head 参数
 * authToken:4acf8612-d66c-4770-a775-c9418c65bacd
 * @ClassName: ApiController2
 * @author fuce
 * @date 2020-12-07 00:56
 */
@Api(value = "iphoneAPI")
@Controller
@RequestMapping("/api")
public class ApiController2 {
	/**
	 * 第一步：token获取
	 * post：http://localhost:8080/admin/API/login
	 * body参数：
	 * username:admin
	 * password:admin
	 * 返回 {"code":200,"data":"1487913f-5a64-488d-9fc7-243d004faae2"}
	 * 第二步：请求测试
	 * get:请求地址：http://localhost:8080/api/test
	 * head参数：
	 * authToken:1487913f-5a64-488d-9fc7-243d004faae2
	 * 返回信息
	 * {"code":200,"data":"admin"}
	 */
	@ApiOperation(value = "token测试方法", notes = "token测试方法")
	@GetMapping("/test")
	@ResponseBody
	public AjaxResult test() {
		return AjaxResult.successData(200, ShiroUtils.getLoginName());
	}
}
