package com.fc.test.model.custom.autocode;

import java.util.List;

import com.fc.test.util.StringUtils;

/**
 * 自动生成配置文件
* @ClassName: GlobalConfig
* @author fuce
* @date 2019-08-13 02:03
*
 */
public class GlobalConfig {
	/**
     * 表名称集合
     */
    private List<TableConfig> tableNames;

    
/*            表关系配置
    private RelationConfig relationConfig;*/
    /**
     * 生成代码的父包 如父包是com.fc.test  controller将在com.fc.test.controller下 bean 将在com.fc.test.bean下 ,service,dao同理
     */
    private String parentPack;
    /**
     * 生成代码的项目路径 D:\Users\Administrator\git\SpringBoot_v2
     */
    private String parentPath;

    /**
     * 是否覆盖生成 默认不覆盖
     */
    private Boolean cover=false;

    private Boolean swagger=false;


    /**
     * java在项目中的classpath位置
     */
    private String javaSource="src/main/java";

    /**
     * resource位置
     */
    private String resources="src/main/resources";
    /**
     * xml存放的路径
     */
    private String xmlPath="mybatisMapper";

    /**
     * bean的名称
     */
    private String packageBean="bean";
    /**
     * dao的名称
     */
    private String packageDao="dao";
    /**
     * controller的名称
     */
    private String packageController="controller";
    /**
     * service的名称
     */
    private String packageService="service";
	/**
	 * 表前缀
	 */
    private String tablePrefix;
    /**
     * 是否启用代码生成器
     */
    private Boolean autoCode=true;

    /**
     * 观察者模式.只能看.不能生成代码
     */
    private Boolean watchMobel=false;
    /**
     * 电子邮件
     */
    private String email;
    /**
     * 作者名字
     */
    private String author;


    public Boolean getWatchMobel() {
        return watchMobel;
    }

    public void setWatchMobel(Boolean watchMobel) {
        this.watchMobel = watchMobel;
    }

    public Boolean getAutoCode() {
        return autoCode;
    }

    public void setAutoCode(Boolean autoCode) {
        this.autoCode = autoCode;
    }

    public Boolean getSwagger() {
        return swagger;
    }

    public void setSwagger(Boolean swagger) {
        this.swagger = swagger;
    }

    public Boolean getCover() {
        return cover;
    }

  

    public void setCover(Boolean cover) {
        this.cover = cover;
    }

    public String getXmlPath() {
        return xmlPath;
    }

    public void setXmlPath(String xmlPath) {
        this.xmlPath = xmlPath;
    }

    public String getJavaSource() {
        return javaSource;
    }

    public void setJavaSource(String javaSource) {
        this.javaSource = javaSource;
    }

    public String getResources() {
        return resources;
    }

    public void setResources(String resources) {
        this.resources = resources;
    }

    public String getPackageBean() {
        return packageBean;
    }

    public void setPackageBean(String packageBean) {
        this.packageBean = packageBean;
    }

    public String getPackageDao() {
        return packageDao;
    }

    public String getPackageDaoUp() {
        if(!StringUtils.isEmpty(packageDao)){
            return StringUtils.firstUpperCase(packageDao);
        }
        return "";
    }

    public void setPackageDao(String packageDao) {
        this.packageDao = packageDao;
    }

    public String getPackageController() {
        return packageController;
    }
    public String getPackageControllerUp() {
        if(!StringUtils.isEmpty(packageController)){
            return StringUtils.firstUpperCase(packageController);
        }
        return "";
    }

    public void setPackageController(String packageController) {
        this.packageController = packageController;
    }

    public String getPackageService() {
        return packageService;
    }
    public String getPackageServiceUp() {
        if(!StringUtils.isEmpty(packageService)){
            return StringUtils.firstUpperCase(packageService);
        }
        return "";
    }

    public void setPackageService(String packageService) {
        this.packageService = packageService;
    }

    public List<TableConfig> getTableNames() {
        return tableNames;
    }

    public void setTableNames(List<TableConfig> tableNames) {
        this.tableNames = tableNames;
    }

    public String getParentPath() {
        return parentPath;
    }
    public String getParentPathResources() {
        return parentPath+ "/" + getResources();
    }

    public void setParentPath(String parentPath) {
        this.parentPath = parentPath;
    }

    public String getParentPack() {
        return parentPack;
    }

    public String getParentPathJavaSource() {
        return parentPath+ "/" + getJavaSource();
    }

    public void setParentPack(String parentPack) {
        this.parentPack = parentPack;
    }

	public String getTablePrefix() {
		return tablePrefix;
	}

	public void setTablePrefix(String tablePrefix) {
		this.tablePrefix = tablePrefix;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	/**
	 * TODO
	 * @param tableNames 数据库表配置
	 * @param parentPack 生成代码的父包 
	 * @param parentPath 生成代码的项目路径
	 * @param cover 是否覆盖生成文件
	 * @param swagger 是否生成swagger文档 默认true
	 * @param javaSource java在项目中的classpath位置
	 * @param resources resource位置
	 * @param xmlPath xml存放的文件夹默认 mybatisMapper
	 * @param packageBean bean的名称
	 * @param packageDao dao的名称
	 * @param packageController controller的名称
	 * @param packageService service的名称
	 * @param tablePrefix 表前缀
	 * @param autoCode 是否启用代码生成器
	 * @param watchMobel 观察者模式.只能看.不能生成代码
	 * @author fuce
	 * @Date 2019年8月17日 上午1:17:23
	 */
	public GlobalConfig(List<TableConfig> tableNames, String parentPack, String parentPath, Boolean cover,
			Boolean swagger, String javaSource, String resources, String xmlPath, String packageBean, String packageDao,
			String packageController, String packageService, String tablePrefix, Boolean autoCode, Boolean watchMobel,String author,String email) {
		super();
		this.tableNames = tableNames;
		this.parentPack = parentPack;
		this.parentPath = parentPath;
		this.cover = cover;
		this.swagger = swagger;
		this.javaSource = javaSource;
		this.resources = resources;
		this.xmlPath = xmlPath;
		this.packageBean = packageBean;
		this.packageDao = packageDao;
		this.packageController = packageController;
		this.packageService = packageService;
		this.tablePrefix = tablePrefix;
		this.autoCode = autoCode;
		this.watchMobel = watchMobel;
		this.author= author;
		this.email=email;
	}

	public GlobalConfig() {
		super();
	}
    
}
