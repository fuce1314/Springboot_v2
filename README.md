### 前言
  SpringBoot_v2项目是努力打造springboot框架的极致细腻的脚手架。包括一套漂亮的前台。无其他杂七杂八的功能，原生纯净。

### 项目介绍
  基于springboot的一款纯净脚手架。努力打造完美注释跟文档。方便快速二次开发。

### 组织架构

```
Springboot
├─doc  项目SQL语句以及文档
│
├─common 公共模块
│  ├─base Base继承通用类
│  ├─conf springBoot所有配置
│  ├─domain 前台返回包
│  ├─interceptor 拦截器
│  ├─domain 前台返回包
│  ├─quartz Spring定时器
│  └─support 工具包
│
├─controller 请求访问模块
│  ├─admin 模版后台请求包
│  └─HomeController.java 首页访问类
│
├─Mapper Dao模块
│  ├─auto mybatis-generator.xml自动生成Dao
│  └─custom 自定义Dao
│
├─Model 实体类模块
│  ├─auto mybatis-generator.xml自动生成实体包
│  └─custom 自定义实体
│
├─Service 服务层模块[没写抽象模块，因为我觉得没什么用，可能我能力不足]
│
├─shiro 权限模块
│  ├─config shiro配置
│  ├─service shiro服务层
│  └─util shiro通用方法
│
├─util 工具模块
│
├─SpringbootSwagger2Application 启动类
│ 
├─SpringbootWebInitializer tomcat启动类
│
├─test 测试类
│
├─resources 配置文件夹
│  ├─ehcache shiro权限缓存配置
│  ├─mybatis mybatis Mapper.xml生成文件夹
│  │   ├─auto自动生成的Mapper.xml文件夹
│  │   └─custom 手写Mapper.xml文件夹
│  │
│  ├─static 静态文件存放文件夹
│  ├─templates 前台HTML存放文件夹
│  ├─application-dev.yml 开发环境配置
│  ├─application-prod.yml 生产环境配置
│  ├─application.yml springboot配置
│  ├─banner1.txt springboot 启动动画
│  ├─logback.xml log4j配置文件
│  └─mybatis-generator.xml mybates自动生成 xml、dao、model
│  
└─pom.xml   maven.xml


```

###技术选项
技术|名称|官网|备注
---|---|---|---
springboot|springboot框架 || 
Apache Shiro|权限框架||
MyBatis Generator|代码生成||
PageHelper|MyBatis物理分页插件||
hikari|数据库连接池||
Thymeleaf|模板引擎||
Log4J|日志组件||
Swagger2|接口测试框架||
Maven|项目构建管理||

### 前端技术
技术|名称|官网|备注
---|---|---|---
jQuery|函式库 || 
bootstrap|前端页面框架||
Font-awesome|字体图标||
jquery.validate|jquery验证插件||
vue|渐进式框架||
ladda.min.js|按钮加载js||
bootstrap-table|表格组件||
layer.js|弹窗组件||
jquery.blockUI.js|遮蔽层组件||
bootstrap-table-export.js|前台导出组件||

### jar版本

| 名称       | 版本          | 备注 |
|------------|---------------|------|
| springBoot | 2.0.0.RELEASE |      |
| mybatis    | 1.3.2         |      |
| swagger2   | 2.7.0         |      |
| swagger-ui | 2.7.0         |      |
| gson       | 2.8.2         |      |
| pagehelper | 4.1.4         |      |
| mysql|5.1.40 OR   8.0.11      |      |
| shiro|1.4.0         |      |
| thymeleaf-extras-shiro|2.0.0         |      |
| thymeleaf|2.0.0.RELEASE         |      |
| commons-lang3|  3.7       |      |
| commons-lang|2.4         |      |
| commons-io|2.5         |      |
| commons-fileupload|1.3.3         |      |
| spring-boot-devtools|2.0.0.RELEASE         |      |
| hutoo| 4.1.10        |      |



语言环境如下： java8.0+tomcat8+mysql7或者8 【语法未用8.0语法】
该系统整合：
Srping
1. Swagger2.0--版本2.7.0
2. thymeleaf--版本 2.0.0
3. mybatis2-generator.xml
4. 多个数据库环境 【非主从】
5. 一个整理好的后台模版 --【非h+】
6. 自定义拦截 --【方便配置全局变量】
7. 自定义定时器 --【Spring定时器我感觉已经够用】
8. pagehelper分页插件 --版本4.1.4
9. 权限shiro -- 1.4.0



![界面样式](https://images.gitee.com/uploads/images/2018/0822/003000_175616d0_123301.png "{{H[HML}(`V33A47(U)ZTF5.png")
![HTML代码页面](https://images.gitee.com/uploads/images/2018/0822/004608_c55d62a4_123301.jpeg "未命名拼图 (1).jpg")