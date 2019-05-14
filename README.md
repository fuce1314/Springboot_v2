
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
│  ├─exception 异常处理包
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
│  ├─static 静态文件存放文件夹[后台模版就放在此文件夹下面。所有的模版页面都在下面]
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
bootstrap-treeview|树结构组件||

### jar版本

| 名称       | 版本          | 备注 |
|------------|---------------|------|
| springBoot | 2.0.0.RELEASE |      |
| mybatis-spring 1.3.2 | 1.3.2         |      |
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
- JDK8 http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
- Maven http://maven.apache.org/download.cgi


### 部署流程
1. 导入doc文件夹里面的test.sql到数据库
2. 确认自己的mysql版本 进行修改jar  在pom.xml 73-84行
3. 修改application-dev.yml 里面自己数据库版本对应的jdbc链接
4. 正常启动run SpringbootSwagger2Application.java

### 打包发布编译流程
- maven编译安装pom.xml文件即可打包成war

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

### 后台代码注释风格
![输入图片说明](https://images.gitee.com/uploads/images/2018/0909/203106_52eca8e3_123301.jpeg "QQ截图20180909202815.jpg")
![输入图片说明](https://images.gitee.com/uploads/images/2018/0909/203112_278db2f4_123301.jpeg "QQ截图20180909202830.jpg")
![输入图片说明](https://images.gitee.com/uploads/images/2018/0909/203118_39d8b7cd_123301.jpeg "QQ截图20180909202838.jpg")
![输入图片说明](https://images.gitee.com/uploads/images/2018/0909/203125_a362822a_123301.jpeg "QQ截图20180909202852.jpg")


### 前端代码注释风格
![HTML代码页面](https://images.gitee.com/uploads/images/2018/0822/004608_c55d62a4_123301.jpeg "未命名拼图 (1).jpg")
![输入图片说明](https://images.gitee.com/uploads/images/2018/0909/203322_6dc467c2_123301.jpeg "QQ截图20180909203303.jpg")

### 代码自动生成功能
![自动生成代码](https://images.gitee.com/uploads/images/2019/0514/003054_e99cdee7_123301.png "自动生成页面.png")
![输入图片说明](https://images.gitee.com/uploads/images/2019/0514/003215_127c9010_123301.png "代码自动生成文件.png")



### 后期功能

功能|描述
---|---
 字典表|
 部署文档|
 文件上传|完成
 再次优化|完成
 add跟eidt页面js写出js文件|
 500页面|完成
 404页面|完成
 权限错误页面|完成

### 情况说明
- 如果您喜欢Springboot_v2，可以clone下来使用，您的star将是本人前进的动力，如果您有技术疑问，可以加群交流。
- 如果Springboot_v2对您有一点帮助，您可以点个star，就是对作者最大的支持了。
- Springboot_v2脚手架会一直更新下去。
- 需要进项目一起开发的请进群私聊我，让我们一起维护这个开发项目
- 很多人反应说404，那是因为其他页面根本没做，因为权限脚手架只在系统设置里面。我留着其他链接，是方便你们根据需求自行添加页面

### 感谢开源软件列表
1. 人人renren-generator 自动生成项目参照人人自动生成 https://gitee.com/renrenio/renren-generator


### 开发者联系
- QQ：87766867 
- QQ群：<a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=a8770621a7c51a904d667db47312b320d30e5c5581bb46103c2d5a8486cb8dce"><img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="SrpringBoot-v2" title="SrpringBoot-v2"></a>  进群备注springbootv2

有任何问题可以提出

### 注意事项
- 所有的model字段解释都在mysql的字段注释里面，请具体查看mysql的字段注解



### Github
- 所有的github代码 以码云更新为准
- https://github.com/fuce1314/Springboot_v2




### bug 列表
 1、 目前发现权限添加的时候好像父级id我还没写好。。。等中秋一起撸完，你们先star 下，中秋后在下【20180922 1:30 已修改】

### wiki
-https://gitee.com/bdj/SpringBoot_v2/wikis

### 更新日志
springbootv2大更新功能[20190501]
- 修改左右局部刷新
- 更新war发布到tomcat发布错误
- 修改拦截器bug
- 更新全新数据库

springbootv2大更新功能[20190507]
- marst 为iframe加载方式的局部刷新框架
- 添加新的分支为不局部刷新，需要的可以自行切换分支下载

springbootv2大更新功能[20190512]
- marst更新自动生成代码[有bug mapper.xml里面的varchar字段是小写 跟日期字段是datatime 字段 需要修改即可用]
