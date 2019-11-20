package com.fc.test.controller;

import com.fc.test.common.base.BaseController;
import com.fc.test.model.custom.TitleVo;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 如果有前台这儿写前台访问方法
 * @ClassName: IndexController
 * @author fuce
 * @date 2019-10-21 00:15
 */
@Controller
public class IndexController extends BaseController{
	
	/**
	 * 前台访问 域名:端口 例如:localhost:80的get请求
	 * @param map
	 * @return
	 * @author fuce
	 * @Date 2019年11月20日 下午10:55:13
	 */
	@ApiOperation(value="前台",notes="前台")
	@GetMapping("/")
	public String index(ModelMap map) {
		String str="前台";
		setTitle(map, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
    	return "index";
	}
	/**
	 * 前台访问/index的get请求
	 * @param map
	 * @return
	 * @author fuce
	 * @Date 2019年11月20日 下午10:54:56
	 */
	@ApiOperation(value="前台",notes="前台")
	@GetMapping("/index")
	public String index2(ModelMap map) {
		String str="前台";
		setTitle(map, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
		return "index";
	}
}
