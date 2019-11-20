package com.fc.test.util.AutoCode;

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
import org.apache.commons.lang.StringUtils;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;
import com.fc.test.model.custom.TsysTables;
import com.fc.test.model.custom.autocode.AutoCodeConfig;
import com.fc.test.model.custom.autocode.BeanColumn;
import com.fc.test.model.custom.autocode.GlobalConfig;
import com.fc.test.service.SysUtilService;
import com.fc.test.util.SnowflakeIdWorker;
import cn.hutool.core.date.DateTime;

/**
 * 自动生成 通用类
* @ClassName: AutoCodeUtil
* @author fuce
* @date 2019-11-20 22:05
 */
public class AutoCodeUtil {

	private AutoCodeUtil(){}
	
	/**生成文件路径**/
	private static String targetPath = getTargetPath();
	
	
	public static String getTargetPath() {
		return AutoCodeConfig.getGlobalConfig().getParentPath();
	}

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
//	        templates.add("auto_code/说明.txt.vm");
	        return templates;
	    }

	/**
	 * 创建单表
	 * @author fuce
	 * @Date 2019年8月24日 下午11:44:54
	 */
	public static void autoCodeOneModel(SysUtilService sysUtilService,TsysTables tables,List<BeanColumn> beanColumns,String conditionQueryField,String pid,int sqlcheck){
		 //设置velocity资源加载器
        Properties prop = new Properties();
        prop.put("file.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader" );
        Velocity.init(prop);
		
		GlobalConfig globalConfig= AutoCodeConfig.getGlobalConfig();
		Map<String, Object> map = new HashMap<>();
        //数据库表数据
		map.put("TsysTables",tables);
        //字段集合
        map.put("beanColumns",beanColumns);
        //配置文件
        map.put("globalConfig",globalConfig);
        map.put("datetime",new DateTime());
        map.put("pid",pid);
        map.put("sqlcheck",sqlcheck);
        map.put("conditionQueryField",conditionQueryField);
        map.put("conditionQueryField_a",com.fc.test.util.StringUtils.firstLowerCase(conditionQueryField));
        map.put("SnowflakeIdWorker", SnowflakeIdWorker.class);
        //需要导入的java类
        map.put("JavaClassPackages", getJavaClassPackage(beanColumns));
        VelocityContext context = new VelocityContext(map);
        
      //获取模板列表
        List<String> templates = getTemplates();
        for (String template : templates) {
        	try {
        		if(template.contains("menu.sql.vm")) {
        			if(sqlcheck==1) {//执行sql
        				Template tpl = Velocity.getTemplate(template, "UTF-8" );
            			StringWriter sw = new StringWriter(); 
            			tpl.merge(context, sw);
            			System.out.println(sw);
            			executeSQL(sysUtilService, sw.toString());
        			}else {//只输出
        				Template tpl = Velocity.getTemplate(template, "UTF-8" );
            			StringWriter sw = new StringWriter(); 
            			tpl.merge(context, sw);
            			System.out.println(sw);
        			}
        			
        		}else {
        			String filepath=getCoverFileName(template,tables.getTableModel_a() ,tables.getTableModel(),globalConfig.getParentPack() , "model","gen");
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
        		}
	        	
        	} catch (IOException e) {
                try {
					throw new Exception("渲染模板失败，表名：" +tables.getTableName()+"\n"+e.getMessage());
				} catch (Exception e1) {
					e1.printStackTrace();
				}
            }
        }
	}
	
	
	
	/**
     * 获取覆盖路径
     */
    public static String getCoverFileName(String template,String classname,String className, String packageName, String moduleName,String controller) {
        String packagePath =targetPath+File.separator+"src"+File.separator + "main" + File.separator + "java" + File.separator;
        String resourcesPath=targetPath+File.separator+"src"+File.separator + "main" + File.separator+"resources"+ File.separator;;
        if (StringUtils.isNotBlank(packageName)) {
            packagePath += packageName.replace(".", File.separator) + File.separator;
        }

        if (template.contains("Entity.java.vm")) {//model.java
            return packagePath+moduleName +File.separator+ "auto" + File.separator + className + ".java";
        }
        if(template.contains("EntityExample.java.vm")) {//modelExample.java
        	return packagePath+moduleName +File.separator+ "auto" + File.separator + className + "Example.java";
        }
        
        if (template.contains("EntityMapper.java.vm")) {//daomapper.java
            return packagePath + "mapper" + File.separator + "auto" + File.separator + className + "Mapper.java";
        }
        if (template.contains("EntityMapper.xml.vm")) {//daomapper.xml
            return resourcesPath+"mybatis" + File.separator+"auto"+ File.separator + className + "Mapper.xml";
        }
        
        if (template.contains("EntityService.java.vm")) {
            return packagePath + "service" + File.separator + className + "Service.java";
        }
        if(template.contains("EntityController.java.vm")) {
        	 return packagePath + "controller" + File.separator + controller + File.separator + className + "Controller.java";
        }
        if(template.contains("list.html.vm")) {
        	 return resourcesPath+"templates"+File.separator + controller+File.separator + classname+File.separator +"list.html";
        }
        if(template.contains("add.html.vm")) {
        	System.err.println(resourcesPath+"templates"+File.separator + controller+File.separator + classname+File.separator );
       	 	 return resourcesPath+"templates"+File.separator + controller+File.separator + classname+File.separator +"add.html";
        }
        if(template.contains("edit.html.vm")) {
       	 	return  resourcesPath+"templates"+File.separator + controller+File.separator + classname+File.separator +"edit.html";
        }
        return null;
    }
	
    
    /**
     * 执行sql
     * @param sysUtilService
     * @param sql
     * @author fuce
     * @Date 2019年8月31日 下午6:40:14
     */
    public static void executeSQL(SysUtilService sysUtilService,String sql) {
    	int list= sysUtilService.executeSQL(sql);
    	System.out.println(list);
    }
    
    /**
     * 获取javamodel需要的导入类
     * @author fuce
     * @Date 2019年8月26日 下午11:11:09
     */
    public static String getJavaClassPackage(List<BeanColumn> beanColumns) {
    	Map<String, String> map=new HashMap<>();
    	StringBuffer buffer=new StringBuffer();
    	for (BeanColumn beanColumn : beanColumns) {
    		map.put(beanColumn.getBeanType(), beanColumn.getBeanType());
		}
    	if(map.size()>0) {
    		boolean time=false;
    		for (String key : map.keySet()) {
    			if(!"java.lang.String".equals(key)) {
    				buffer.append("import "+map.get(key)+";\n");
    			}
    			if("java.util.Date".equals(key)&&time==false) {
    				time=true;
    				buffer.append("import com.fasterxml.jackson.annotation.JsonFormat;\n");
    			}
			}
    	}
    	return buffer.toString();
    }
	
}
