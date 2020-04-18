package com.fc.test.controller.admin;

import com.fc.test.common.base.BaseController;
import com.fc.test.model.custom.TitleVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 定时任务表达式工具生成Controller
 * @ClassName: QuartzController
 * @author fuce
 * @date 2019-11-20 22:44
 */
@Api(value = "定时任务工具类")
@Controller
@RequestMapping("/quartz")
public class QuartzController extends BaseController{

	private String prefix = "admin/quartz";

	/**
	 * 定时页面展示
	 * TODO(请说明这个方法的作用).
	 * @param model
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午3:45:53
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
    public String view(ModelMap model)
    {	
		String str="定时器";
		setTitle(model, new TitleVo("表达式生成", str+"管理", true,"欢迎进入"+str+"页面", true, false));
        return prefix + "/list";
    }
}
