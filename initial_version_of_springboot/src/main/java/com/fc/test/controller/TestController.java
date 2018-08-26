package com.fc.test.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import com.fc.test.model.auto.Test;
import com.fc.test.service.TestService;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("TestController")
@Api(value = "测试数据")
public class TestController {
    @Resource
    private TestService testService;
    
    @RequiresRoles({"ROLE_ADMIN"})
    @ApiOperation(value="Test测试数据", notes="Test测试数据2",httpMethod ="POST")
    @RequestMapping(value = "test", produces = "text/json;charset=UTF-8")
    @ResponseBody
    public String test(){
    	Gson gson=new Gson();
        PageInfo<Test> list=testService.all();
        return gson.toJson(list);

    }
    
    @RequestMapping(value = "loginView", produces = "text/json;charset=UTF-8")
    public String loginView(){
    	Gson gson=new Gson();
        PageInfo<Test> list=testService.all();
        return "admin/blank2";

    }
    @RequestMapping(value = "loginView2", produces = "text/json;charset=UTF-8")
    public String loginView2(){
    	Gson gson=new Gson();
        PageInfo<Test> list=testService.all();
        return "admin/back";

    }

}
