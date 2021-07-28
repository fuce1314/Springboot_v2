package com.fc.v2.controller.admin;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipOutputStream;
import javax.servlet.http.HttpServletResponse;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResuTree;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.custom.TsysTables;
import com.fc.v2.model.custom.TsysTablesVo;
import com.fc.v2.model.custom.autocode.AutoCodeConfig;
import com.fc.v2.model.custom.autocode.AutoConfigModel;
import com.fc.v2.model.custom.autocode.AutoDictType;
import com.fc.v2.model.custom.autocode.BeanColumn;
import com.fc.v2.model.custom.autocode.TableInfo;
import com.fc.v2.service.DictService;
import com.fc.v2.service.GeneratorService;
import com.fc.v2.service.SysDictTypeService;
import com.fc.v2.util.AutoCode.AutoCodeUtil;
import org.apache.commons.io.IOUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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

	private String prefix = "admin/autoCode";
	@Autowired
	private GeneratorService generatorService;
	// @Autowired
	// private SysUtilService sysUtilService;
	
	@Autowired
	private SysDictTypeService tSysDictTypeService;
	
	@Autowired
	private DictService dictService; 

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
		
		modelMap.put("author", AutoCodeConfig.getConfig().getProperty("author"));
		modelMap.put("email", AutoCodeConfig.getConfig().getProperty("author"));
		modelMap.put("parentPath", AutoCodeConfig.getConfig().getProperty("parentPath"));
		modelMap.put("dictTypes",tSysDictTypeService.selectByExample(null));
		return prefix + "/global";
	}

	/**
	 * 树结构查询所有表
	 * 
	 * @return
	 * @author fuce
	 * @Date 2021年1月15日 下午2:21:19
	 */
	@GetMapping("/selectTables")
	@ResponseBody
	public ResuTree selectTables() {
		List<TsysTables> list = generatorService.queryList(null);
		List<TsysTablesVo> TreeList = new ArrayList<TsysTablesVo>();
		for (int i = 0; i < list.size(); i++) {
			TsysTablesVo tablesVo = new TsysTablesVo(i + 1, -1, list.get(i).getTableName(), list.get(i).getEngine(),
					list.get(i).getTableComment(), list.get(i).getTableModel(), list.get(i).getCreateTime(),
					list.get(i).getTableName() + " > " + list.get(i).getTableComment());
			TreeList.add(tablesVo);
		}

		TsysTablesVo tables = new TsysTablesVo();
		tables.setTableModel("all");
		tables.setTableAndName("所有表");
		tables.setParentId(0);
		tables.setId(-1);
		TreeList.add(tables);
		return dataTree(TreeList);
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
	@GetMapping("/queryTableInfo")
	@ResponseBody
	public ResultTable queryTableInfo(String tableName) {
		List<BeanColumn> list = generatorService.queryColumns2(tableName);
		return pageTable(list, list.size());
	}

	/**
	 * 生成文件
	 * 
	 * @author fuce
	 * @Date 2021年1月15日 下午2:21:55
	 */
	@PostMapping("/createAuto")
	@ResponseBody
	public AjaxResult createAuto(@RequestBody AutoConfigModel autoConfigModel) {
		// 根据表名查询表字段集合
		List<BeanColumn> list =autoConfigModel.getBeanColumns() ;// generatorService.queryColumns2(autoConfigModel.getTableName());
		//根据表的设置查询出字典表需要的数据
		
		list.stream().forEach(item ->{
			if(item.getHtmlType()==2) {
				AutoDictType autoDictType=new AutoDictType(dictService.getSysDictType(item.getDictTypeName()),dictService.getType(item.getDictTypeName()));
				item.setAutoDictType(autoDictType);
			}
			
		});
	
		
		
		
		// 初始化表信息
		TableInfo tableInfo = new TableInfo(autoConfigModel.getTableName(), list, autoConfigModel.getTableComment());

		AutoCodeUtil.autoCodeOneModel(tableInfo, autoConfigModel);
		return AjaxResult.success();
	}

	/**
	 * 生成文件Zip
	 * 
	 * @author fuce
	 * @throws IOException
	 * @Date 2021年1月15日 下午2:21:55
	 */
	@GetMapping("/createAutoZip")
	@ResponseBody
	public void createAutoZip(AutoConfigModel autoConfigModel, HttpServletResponse response) throws IOException {
		byte[] b;
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		ZipOutputStream zip = new ZipOutputStream(outputStream);
		// 根据表名查询表字段集合
		List<BeanColumn> list = generatorService.queryColumns2(autoConfigModel.getTableName());
		// 初始化表信息
		TableInfo tableInfo = new TableInfo(autoConfigModel.getTableName(), list, autoConfigModel.getTableComment());
		// 自动生成
		AutoCodeUtil.autoCodeOneModel(tableInfo, autoConfigModel, zip);
		IOUtils.closeQuietly(zip);
		b = outputStream.toByteArray();
		response.reset();
		response.setHeader("Content-Disposition", "attachment; filename=\"v2.zip\"");
		response.addHeader("Content-Length", "" + b.length);
		response.setContentType("application/octet-stream; charset=UTF-8");
		IOUtils.write(b, response.getOutputStream());
	}

	/**
	 * 预览生成文件
	 * 
	 * @author fuce
	 * @Date 2021年1月15日 下午2:21:55
	 */
	@GetMapping("/viewAuto")
	public String viewAuto(AutoConfigModel autoConfigModel, ModelMap model) {
		List<BeanColumn> list = generatorService.queryColumns2(autoConfigModel.getTableName());
		TableInfo tableInfo = new TableInfo(autoConfigModel.getTableName(), list, autoConfigModel.getTableComment());
		Map<String, String> map = AutoCodeUtil.viewAuto(tableInfo,autoConfigModel);
		model.put("viewmap", map);
		return prefix + "/view";
	}

//	/**
//	 * 保存配置文件
//	 * 
//	 * @param globalConfig
//	 * @param model
//	 * @param request
//	 * @return
//	 * @throws Exception
//	 * @author fuce
//	 * @Date 2019年8月24日 下午3:25:41
//	 */
//	//@Log(title = "保存配置文件", action = "1")
//	@ApiOperation(value = "保存配置文件", notes = "保存配置文件")
//	@PostMapping("/addGlobal")
//	@ResponseBody
//	public AjaxResult addGlobal(GlobalConfig globalConfig, Model model, HttpServletRequest request) throws Exception {
//		AutoCodeConfig.setGlobalConfig(globalConfig);
//		if (globalConfig != null) {
//			return success();
//		} else {
//			return error();
//		}
//	}

//	/**
//	 * 保存单表信息
//	 * 
//	 * @param allColumnss  字段列表字符串
//	 * @param tableName 表名
//	 * @param conditionQueryField  条件查询字段
//	 * @param pid 父id
//	 * @param sqlcheck 是否录入数据
//	 * @param vhtml 生成html
//	 * @param vController 生成controller
//	 * @param vservice 生成service
//	 * @param vMapperORdao 生成mapper or dao
//	 * @return
//	 * @throws Exception
//	 * @author fuce
//	 * @Date 2019年8月31日 上午2:49:18
//	 */
//	//@Log(title = "保存单表信息", action = "1")
//	@ApiOperation(value = "保存单表信息", notes = "保存单表信息")
//	@PostMapping("/saveOne")
//	@ResponseBody
//	public AjaxResult saveOne(String allColumnss, String tableName, String conditionQueryField, String pid,
//			int sqlcheck,Boolean vhtml,Boolean vController,Boolean vService,Boolean vMapperORdao) throws Exception {
//		//JSONArray array = JSONUtil.parseArray(allColumnss);
//		// 遗留可用前端修改传入的字段等信息（未完善）
//		//List<BeanColumn> beanColumns2 = JSONUtil.toList(array, BeanColumn.class);
//		List<TsysTables> list = generatorService.queryList(tableName);
//		if (list.size() > 0) {
//			TsysTables tables = list.get(0);
//			List<BeanColumn> beanColumns = generatorService.queryColumns2(tableName);
//			AutoCodeUtil.autoCodeOneModel(sysUtilService, tables, beanColumns, conditionQueryField, pid, sqlcheck, vhtml, vController, vService, vMapperORdao);
//		}
//		return AjaxResult.success();
//	}
}