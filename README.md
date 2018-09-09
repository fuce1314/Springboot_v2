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
| hutool| 4.1.10        |      |


### 开发环境
- JDK8.0
- mysql5.5.40 OR msql 8.0
- eclipse

### 资源下载
- JDK7 http://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase7-521261.html
- Maven http://maven.apache.org/download.cgi

### 编译流程
- maven编译安装pom.xml文件即可

### 登陆地址
- http://localhost:8081   默认帐号密码: admin/admin
- swagger  http://localhost:8081/swagger-ui.html

### 启动类
- SpringbootSwagger2Application 启动类


### 数据库模型
![数据库模型](https://images.gitee.com/uploads/images/2018/0909/202241_60aac716_123301.png "O4JB4SR0LS5%5UX$ZGE2}57.png")

### 界面风格
![输入图片说明](https://images.gitee.com/uploads/images/2018/0909/202603_b48d6be4_123301.jpeg "QQ截图20180909202536.jpg")
![输入图片说明](https://images.gitee.com/uploads/images/2018/0909/202956_a0ce0317_123301.jpeg "QQ截图20180909202627.jpg")
![输入图片说明](https://images.gitee.com/uploads/images/2018/0909/203002_b64f157c_123301.jpeg "QQ截图20180909202655.jpg")
![空白页面](https://images.gitee.com/uploads/images/2018/0822/003000_175616d0_123301.png "{{H[HML}(`V33A47(U)ZTF5.png")

###后台代码注释风格
![输入图片说明](https://images.gitee.com/uploads/images/2018/0909/203106_52eca8e3_123301.jpeg "QQ截图20180909202815.jpg")
![输入图片说明](https://images.gitee.com/uploads/images/2018/0909/203112_278db2f4_123301.jpeg "QQ截图20180909202830.jpg")
![输入图片说明](https://images.gitee.com/uploads/images/2018/0909/203118_39d8b7cd_123301.jpeg "QQ截图20180909202838.jpg")
![输入图片说明](https://images.gitee.com/uploads/images/2018/0909/203125_a362822a_123301.jpeg "QQ截图20180909202852.jpg")


### 前端代码注释风格
![HTML代码页面](https://images.gitee.com/uploads/images/2018/0822/004608_c55d62a4_123301.jpeg "未命名拼图 (1).jpg")
![输入图片说明](https://images.gitee.com/uploads/images/2018/0909/203322_6dc467c2_123301.jpeg "QQ截图20180909203303.jpg")