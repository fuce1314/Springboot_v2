package com.fc.v2.util.AutoCode;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.apache.commons.io.IOUtils;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;
import com.fc.v2.model.custom.autocode.AutoCodeConfig;
import com.fc.v2.model.custom.autocode.AutoConfigModel;
import com.fc.v2.model.custom.autocode.TableInfo;
import com.fc.v2.util.SnowflakeIdWorker;
import com.fc.v2.util.StringUtils;
import cn.hutool.core.date.DateTime;

/**
 * 自动生成 通用类
* @ClassName: AutoCodeUtil
* @author fuce
* @date 2019-11-20 22:05
 */
public class AutoCodeUtil {
	public static List<String> getTemplates(){
        List<String> templates = new ArrayList<String>();

        //java代码模板
        templates.add("auto_code/model/Entity.java.vm");
        templates.add("auto_code/model/EntityExample.java.vm");
        templates.add("auto_code/mapperxml/EntityMapper.xml.vm");
        templates.add("auto_code/service/EntityService.java.vm");
        templates.add("auto_code/mapper/EntityMapper.java.vm");
        templates.add("auto_code/controller/EntityController.java.vm");
        //前端模板
        templates.add("auto_code/html/list.html.vm");
        templates.add("auto_code/html/add.html.vm");
        templates.add("auto_code/html/edit.html.vm");
        //sql模板
        templates.add("auto_code/sql/menu.sql.vm");
        //templates.add("auto_code/说明.txt.vm");
        return templates;
    }
	
	
	/**
	 * 创建单表
	 * @param tableName 表名
	 * @param conditionQueryField  条件查询字段
	 * @param pid 父id
	 * @param sqlcheck 是否录入数据
	 * @param vhtml 生成html
	 * @param vController 生成controller
	 * @param vservice 生成service
	 * @param vMapperORdao 生成mapper or dao
	 * @author fuce
	 * @Date 2019年8月24日 下午11:44:54
	 */
	public static void autoCodeOneModel(TableInfo tableInfo,AutoConfigModel autoConfigModel){
		AutoCodeConfig autoCodeConfig=new AutoCodeConfig();
		//设置velocity资源加载器
        Properties prop = new Properties();
        prop.put("file.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader" );
        Velocity.init(prop);
		Map<String, Object> map = new HashMap<>();
        //数据库表数据
		map.put("tableInfo",tableInfo);
        //字段集合
        map.put("beanColumns",tableInfo.getBeanColumns());
        //配置文件
        map.put("SnowflakeIdWorker", SnowflakeIdWorker.class);
        //class类路径
        map.put("parentPack", autoCodeConfig.getConfigkey("parentPack"));
        //作者
        map.put("author", autoConfigModel.getAuthor());
        //时间
        map.put("datetime",new DateTime());
        //sql需要的权限父级pid
        map.put("pid",autoConfigModel.getPid());
        
        VelocityContext context = new VelocityContext(map);
        
        //获取模板列表
        List<String> templates = getTemplates();
		/*
		 * if(vhtml!=true) { templates.remove("auto_code/html/list.html.vm");
		 * templates.remove("auto_code/html/add.html.vm");
		 * templates.remove("auto_code/html/edit.html.vm"); } if (vController!=true) {
		 * templates.remove("auto_code/controller/EntityController.java.vm"); } if
		 * (vService!=true) {
		 * templates.remove("auto_code/service/EntityService.java.vm"); } if
		 * (vMapperORdao!=true) { templates.remove("auto_code/model/Entity.java.vm");
		 * templates.remove("auto_code/model/EntityExample.java.vm");
		 * templates.remove("auto_code/mapperxml/EntityMapper.xml.vm");
		 * templates.remove("auto_code/mapper/EntityMapper.java.vm"); }
		 */
        for (String template : templates) {
        	try {
        			String targetPath = autoConfigModel.getParentPath();
        			String filepath=getCoverFileName(template,tableInfo ,autoCodeConfig.getConfigkey("parentPack"),targetPath);
    		        Template tpl = Velocity.getTemplate(template, "UTF-8" );
    				File file = new File(filepath);
    				if (!file.getParentFile().exists())
    		            file.getParentFile().mkdirs();
    		        if (!file.exists())
    		            file.createNewFile();
					try (FileOutputStream outStream = new FileOutputStream(file);
						 OutputStreamWriter writer = new OutputStreamWriter(outStream, "UTF-8");
						 BufferedWriter sw = new BufferedWriter(writer)) {
						 tpl.merge(context, sw);
						 sw.flush();
						 System.out.println("成功生成Java文件:" + filepath);
					}
        	} catch (IOException e) {
                try {
					throw new Exception("渲染模板失败，表名：" +"c"+"\n"+e.getMessage());
				} catch (Exception e1) {
					e1.printStackTrace();
				}
            }
        }
	}
	
	

    

	/**
	 * 预览方法
	 * @param tableInfo 数据库表
	 * @return
	 * @author fuce
	 * @Date 2021年1月18日 上午2:10:55
	 */
	public static Map<String,String> viewAuto(TableInfo tableInfo,AutoConfigModel autoConfigModel){
		Map<String, String> velocityMap=new HashMap<String, String>();
		
		AutoCodeConfig autoCodeConfig=new AutoCodeConfig();
		//设置velocity资源加载器
        Properties prop = new Properties();
        prop.put("file.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
        Velocity.init(prop);
		Map<String, Object> map = new HashMap<>();
		//数据库表数据
		map.put("tableInfo",tableInfo);
        //字段集合
        map.put("beanColumns",tableInfo.getBeanColumns());
        //配置文件
        map.put("SnowflakeIdWorker", SnowflakeIdWorker.class);
        //class类路径
        map.put("parentPack", autoCodeConfig.getConfigkey("parentPack"));
        //作者
        map.put("author", autoConfigModel.getAuthor());
        //时间
        map.put("datetime",new DateTime());
        //sql需要的权限父级pid
        map.put("pid",autoConfigModel.getPid());
        
        VelocityContext velocityContext = new VelocityContext(map);
        //获取模板列表
        List<String> templates = getTemplates();
        for (String template : templates) {
			Template tpl = Velocity.getTemplate(template, "UTF-8" );
			StringWriter sw = new StringWriter(); 
			tpl.merge(velocityContext, sw);
			System.out.println("输出模板");
			System.out.println(sw);
			System.out.println("输出模板 end");
			velocityMap.put(template.substring(template.lastIndexOf("/")+1, template.lastIndexOf(".vm")), sw.toString());
        }
        return velocityMap;
	}
	
	
	
	
	


	/**
	 * 自动生成压缩文件方法
	 * @param tableInfo
	 * @param zip
	 * @author fuce
	 * @Date 2021年1月17日 下午7:37:50
	 */
	public static void autoCodeOneModel(TableInfo tableInfo,AutoConfigModel autoConfigModel,ZipOutputStream zip){
		AutoCodeConfig autoCodeConfig=new AutoCodeConfig();
		//设置velocity资源加载器
        Properties prop = new Properties();
        prop.put("file.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader" );
        Velocity.init(prop);
		Map<String, Object> map = new HashMap<>();
        //数据库表数据
		map.put("tableInfo",tableInfo);
        //字段集合
        map.put("beanColumns",tableInfo.getBeanColumns());
        //配置文件
        map.put("SnowflakeIdWorker", SnowflakeIdWorker.class);
        //class类路径
        map.put("parentPack", autoCodeConfig.getConfigkey("parentPack"));
        //作者
        map.put("author", autoConfigModel.getAuthor());
        //时间
        map.put("datetime",new DateTime());
        //sql需要的权限父级pid
        map.put("pid",autoConfigModel.getPid());
        VelocityContext velocityContext = new VelocityContext(map);
        //获取模板列表
        List<String> templates = getTemplates();
        for (String template : templates) {
        	try {
					String filepath=getCoverFileName(template,tableInfo ,autoCodeConfig.getConfigkey("parentPack"),"");
					Template tpl = Velocity.getTemplate(template, "UTF-8" );
					StringWriter sw = new StringWriter();
					tpl.merge(velocityContext, sw);
					zip.putNextEntry(new ZipEntry(filepath));
					IOUtils.write(sw.toString(), zip, "UTF-8");
					IOUtils.closeQuietly(sw);
					zip.closeEntry();
        	} catch (IOException e) {
                try {
					throw new Exception("渲染模板失败，表名：" +"c"+"\n"+e.getMessage());
				} catch (Exception e1) {
					e1.printStackTrace();
				}
            }
        }
	}
	
	

	/**
	 * 
	 * @param template
	 * @param classname
	 * @param className
	 * @param packageName
	 * @param moduleName
	 * @param controller
	 * @return
	 * @author fuce
	 * @Date 2021年1月17日 下午6:40:57
	 */
    public static String getCoverFileName(String template,TableInfo tableInfo, String packageName,String targetPath) {
        
    	String separator=File.separator;
    	String packagePath =targetPath+separator+"src"+separator + "main" + separator + "java" + separator;
        String resourcesPath=targetPath+separator+"src"+separator + "main" + separator+"resources"+ separator;;
        if (StringUtils.isNotBlank(packageName)) {
            packagePath += packageName.replace(".", separator) + separator;
        }

        if (template.contains("Entity.java.vm")) {//model.java
            return packagePath+"model" +separator+ "auto" + separator + tableInfo.getJavaTableName() + ".java";
        }
        if(template.contains("EntityExample.java.vm")) {//modelExample.java
        	return packagePath+"model" +separator+ "auto" + separator + tableInfo.getJavaTableName() + "Example.java";
        }
        
        if (template.contains("EntityMapper.java.vm")) {//daomapper.java
            return packagePath + "mapper" + separator + "auto" + separator + tableInfo.getJavaTableName() + "Mapper.java";
        }
        if (template.contains("EntityMapper.xml.vm")) {//daomapper.xml
            return resourcesPath+"mybatis" + separator+"auto"+ separator + tableInfo.getJavaTableName() + "Mapper.xml";
        }
        
        if (template.contains("EntityService.java.vm")) {
            return packagePath + "service" + separator + tableInfo.getJavaTableName() + "Service.java";
        }
        if(template.contains("EntityController.java.vm")) {
        	 return packagePath + "controller" + separator + "gen" + separator + tableInfo.getJavaTableName() + "Controller.java";
        }
        if(template.contains("list.html.vm")) {
        	 return resourcesPath+"templates"+separator + "gen"+separator + tableInfo.getJavaTableName_a()+separator +"list.html";
        }
        if(template.contains("add.html.vm")) {
        	System.err.println(resourcesPath+"templates"+separator + "gen"+separator + tableInfo.getJavaTableName_a()+separator );
       	 	 return resourcesPath+"templates"+separator + "gen"+separator + tableInfo.getJavaTableName_a()+separator +"add.html";
        }
        if(template.contains("edit.html.vm")) {
       	 	return  resourcesPath+"templates"+separator + "gen"+separator + tableInfo.getJavaTableName_a()+separator +"edit.html";
        }
        if(template.contains("menu.sql.vm")) {
       	 	return  resourcesPath+"sql"+separator +"menu.sql";
        }
        return "";
    }
}
