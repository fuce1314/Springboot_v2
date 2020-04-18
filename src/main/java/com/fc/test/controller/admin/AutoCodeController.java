package com.fc.test.controller.admin;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import com.fc.test.common.base.BaseController;
import com.fc.test.common.domain.AjaxResult;
import com.fc.test.model.auto.TsysPermission;
import com.fc.test.model.custom.TitleVo;
import com.fc.test.model.custom.TsysTables;
import com.fc.test.model.custom.autocode.AutoCodeConfig;
import com.fc.test.model.custom.autocode.BeanColumn;
import com.fc.test.model.custom.autocode.GlobalConfig;
import com.fc.test.service.GeneratorService;
import com.fc.test.service.SysPermissionService;
import com.fc.test.service.SysUtilService;
import com.fc.test.util.AutoCode.AutoCodeUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 代码自动生成
 * 
 * @ClassName: AutoCodeController
 * @author fuce
 * @date 2019-08-13 00:34
 */
@Api(value = "代码自动生成")
@Controller
@RequestMapping("/autoCodeController")
public class AutoCodeController extends BaseController {

	private String prefix = "admin/auto_code";
	@Autowired
	private GeneratorService generatorService;
	@Autowired
	private SysUtilService sysUtilService;
	@Autowired
	private SysPermissionService sysPermissionService;

	/**
	 * 代码自动生成展示首页
	 * 
	 * @param model
	 * @return
	 * @author fuce
	 * @Date 2019年8月13日 上午12:35:23
	 */
	@ApiOperation(value = " 代码自动生成展示首页", notes = " 代码自动生成展示首页")
	@GetMapping("/one")
	@RequiresPermissions("system:autocode:one")
	public String one(ModelMap model) {
		String str = "单表代码生成";
		setTitle(model, new TitleVo("生成", str + "管理", true, "欢迎进入" + str + "页面", true, false));
		List<TsysTables> tables = generatorService.queryList(null);
		List<TsysPermission> permissions = sysPermissionService.list2(null);
		model.addAttribute("tables", tables);
		model.addAttribute("permissions", permissions);
		return prefix + "/one";
	}

	/**
	 * 代码自动生成全局配置
	 * 
	 * @param model
	 * @return
	 * @author fuce
	 * @Date 2019年8月13日 上午12:34:30
	 */
	@ApiOperation(value = " 代码自动生成全局配置", notes = "代码自动生成全局配置")
	@GetMapping("/global")
	@RequiresPermissions("system:autocode:global")
	public String global(ModelMap modelMap) {
		String str = "全局配置";
		setTitle(modelMap, new TitleVo("配置", str + "管理", true, "欢迎进入" + str + "页面", true, false));

		modelMap.put("autoConfig", AutoCodeConfig.getGlobalConfig());
		System.out.println(JSONUtil.toJsonStr(AutoCodeConfig.getGlobalConfig()));
		return prefix + "/global";
	}

	/**
	 * 根据表名查询表信息
	 * @param tableName
	 * @return
	 * @author fuce
	 * @Date 2019年8月15日 上午1:09:36
	 */
	@ApiOperation(value = "根据表名查询表信息", notes = "根据表名查询表信息")
	@PostMapping("/queryTable")
	@ResponseBody
	public AjaxResult queryTable(String tableName) {
		List<TsysTables> list = generatorService.queryList(tableName);
		if (list.size() > 0) {
			return AjaxResult.successData(200, list);
		}
		return AjaxResult.error();
	}

	/**
	 * 根据表查询表字段详情
	 * 
	 * @param tableName
	 * @return
	 * @author fuce
	 * @Date 2019年8月15日 上午1:10:42
	 */
	@ApiOperation(value = "根据表查询表字段详情", notes = "根据表查询表字段详情")
	@PostMapping("/queryTableInfo")
	@ResponseBody
	public AjaxResult queryTableInfo(String tableName) {
		List<BeanColumn> list = generatorService.queryColumns2(tableName);
		System.out.println(JSONUtil.toJsonStr(list));
		if (list.size() > 0) {
			return AjaxResult.successData(200, list);
		}
		return AjaxResult.error();
	}

	/**
	 * 保存配置文件
	 * 
	 * @param globalConfig
	 * @param model
	 * @param request
	 * @return
	 * @throws Exception
	 * @author fuce
	 * @Date 2019年8月24日 下午3:25:41
	 */
	//@Log(title = "保存配置文件", action = "1")
	@ApiOperation(value = "保存配置文件", notes = "保存配置文件")
	@PostMapping("/addGlobal")
	@ResponseBody
	public AjaxResult addGlobal(GlobalConfig globalConfig, Model model, HttpServletRequest request) throws Exception {
		AutoCodeConfig.setGlobalConfig(globalConfig);
		if (globalConfig != null) {
			return success();
		} else {
			return error();
		}
	}

	/**
	 * 保存单表信息
	 * 
	 * @param allColumnss  字段列表字符串
	 * @param tableName 表名
	 * @param conditionQueryField  条件查询字段
	 * @param pid 父id
	 * @return
	 * @throws Exception
	 * @author fuce
	 * @Date 2019年8月31日 上午2:49:18
	 */
	//@Log(title = "保存单表信息", action = "1")
	@ApiOperation(value = "保存单表信息", notes = "保存单表信息")
	@PostMapping("/saveOne")
	@ResponseBody
	public AjaxResult saveOne(String allColumnss, String tableName, String conditionQueryField, String pid,
			int sqlcheck) throws Exception {
		JSONArray array = JSONUtil.parseArray(allColumnss);
		// 遗留可用前端修改传入的字段等信息（未完善）
		List<BeanColumn> beanColumns2 = JSONUtil.toList(array, BeanColumn.class);
		List<TsysTables> list = generatorService.queryList(tableName);
		if (list.size() > 0) {
			TsysTables tables = list.get(0);
			List<BeanColumn> beanColumns = generatorService.queryColumns2(tableName);
			AutoCodeUtil.autoCodeOneModel(sysUtilService, tables, beanColumns, conditionQueryField, pid, sqlcheck);
		}
		return AjaxResult.success();
	}

	/**
	 * 根据权限字段查询是否存在
	 * 
	 * @param perms
	 * @return
	 * @author fuce
	 * @Date 2019年9月1日 上午2:06:31
	 */
	@ApiOperation(value = "根据权限字段查询是否存在", notes = "根据权限字段查询是否存在")
	@PostMapping("/queryLikePerms")
	@ResponseBody
	public AjaxResult queryLikePerms(String tableName) {
		List<TsysTables> list = generatorService.queryList(tableName);
		if (list.size() > 0) {
			TsysTables tables = list.get(0);
			Boolean boolean1 = sysPermissionService.queryLikePerms(tables.getTableModel_a());
			if (boolean1) {
				return AjaxResult.error("数据库已有权限");
			} else {
				return AjaxResult.success("ok");
			}
		}
		return AjaxResult.error("请选择表");
	}
}