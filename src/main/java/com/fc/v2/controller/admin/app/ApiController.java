package com.fc.v2.controller.admin.app;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fc.v2.common.conf.oss.OssTemplate;
import com.fc.v2.common.domain.AjaxResult;

import cn.hutool.core.util.StrUtil;
import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/ApiController")
public class ApiController {
	@Autowired
	private  OssTemplate template;
	
	
	@GetMapping("/test")
	public Object test() {
		Map<String, String> map=new HashMap<String, String>();
		map.put("a", "1");
		map.put("b", "2");
		map.put("c", "3");
		return map;
		
	}
	
	@ApiOperation(value = "获取oss信息", notes = "获取oss信息")
	@GetMapping("/getOssInfo")
	@ResponseBody
	public AjaxResult OssInfo(HttpServletRequest request) {
		Map<String, String> ossinfo=new HashMap<String, String>();
		StringBuffer buffer=new StringBuffer("http://"+request.getServerName());
		if(80!=request.getServerPort()) {
			buffer.append(":"+request.getServerPort());
		}
		if(StrUtil.isNotEmpty(request.getContextPath())) {
			buffer.append(""+request.getContextPath());
		}
		buffer.append("/oss/object/"+template.getOssProperties().getBucketName());
		ossinfo.put("bucketURL",buffer.toString());
		ossinfo.put("BucketName",template.getOssProperties().getBucketName());
		return AjaxResult.successData(200, ossinfo).put("msg", "返回成功");
		
	}

}
