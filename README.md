
### 前言
  SpringBoot_v2项目是努力打造springboot框架的极致细腻的脚手架。包括一套漂亮的前台。无其他杂七杂八的功能，原生纯净。

### 项目介绍
  基于springboot的一款纯净脚手架。努力打造一款免费开源、注释全、文档全适合新手学习、方便快速二次开发的框架。

### 组织架构

```
Springboot
├─doc  项目SQL语句以及文档
│
├─common 公共模块
│  ├─base Base继承通用类
│  ├─conf springBoot所有配置
│  ├─domain 前台返回包
│  ├─druid druid连接池
│  ├─exception 异常处理包
│  ├─file 文件上传
│  ├─interceptor 拦截器
│  ├─log 日志记录AOP
│  ├─domain 前台返回包
│  ├─quartz Spring定时器
│  └─support 工具包
│
├─controller 请求访问模块
│  ├─admin 模版后台请求包
│  ├─websocket websoket消息请求
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
│  ├─generator 自动生成模板以及配置目录
│  │   ├─MyBatisGenerator mybates半自动生成工具
│  │   │   ├─1.bat 执行批处理
│  │   │   ├─generator.xml generator配置文件
│  │   │   ├─mybatis-generator-core-1.3.2.jar generator1.3.2版本
│  │   │   ├─mybatis-generator-core-1.3.7.jar generator1.3.7版本【默认】
│  │   │   └─mysqldriver.jar mysql驱动【该驱动为8.0一下的版本不支持8.0自行替换】
│  │   │
│  │   ├─template 模板文件假
│  │   │   ├─controller anction模板
│  │   │   ├─html html页面模板
│  │   │   ├─mapper dao模板
│  │   │   ├─mapperxml daoxml模板
│  │   │   ├─model 实体模板
│  │   │   ├─service service模板
│  │   │   └─sql sql模板
│  │   │
│  │   └─generator.properties 自动生成配置文件
│  │
│  ├─mybatis mybatis Mapper.xml生成文件夹
│  │   ├─auto自动生成的Mapper.xml文件夹
│  │   └─custom 手写Mapper.xml文件夹
│  │
│  ├─static 静态文件存放文件夹[后台模版就放在此文件夹下面。所有的模版页面都在下面]
│  │   ├─admin 后台目录存放
│  │   │  ├─assets js、css存放路径
│  │   │  ├─assets js、css存放路径
│  │   │  └─bootstarp 后台模板存放路径
│  │   ├─js js存放
│  │   └─login 登录页面js、css、image
│  │
│  ├─templates 前台HTML存放文件夹
│  │   ├─admin 动态后台html模板
│  │   ├─error 错误页面html模板
│  │   └─login.html 登录html页面
│  │
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
Websocket|websocket消息通知||
velocity|模板引擎||
kaptcha|google验证码||
devtools|热部署||
GSON|谷歌json||
druid|阿里连接池||





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
bootstrap-colorpicker|颜色组件||
dropzone|文件上传||
bootstrap-wysihtml5|富文本||
bootstrap-switch|开关按钮||
UEditor|百度富文本||

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
| druid| 1.1.10        |      |
| kaptcha| 2.3.2        |      |
| velocity| 1.7        |      |

### 开发环境
- JDK8.0
- mysql5.5.40 OR msql 8.0
- eclipse

### 资源下载
- JDK8 http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
- Maven http://maven.apache.org/download.cgi


### 部署流程
1. 导入doc文件夹里面的springbootv2.sql到数据库
2. 确认自己的mysql版本 进行修改jar  在pom.xml 73-84行
3. 修改application-dev.yml 里面自己数据库版本对应的jdbc链接
4. 正常启动run SpringbootSwagger2Application.java
- wiki地址:https://gitee.com/bdj/SpringBoot_v2/wikis

### 打包发布编译流程
- maven编译安装pom.xml文件即可打包成war

### 登陆地址
- http://localhost:8080   默认帐号密码: admin/admin
- swagger  http://localhost:8080/swagger-ui.html

### 启动类
- SpringbootStart 启动类


### 数据库模型
![数据库模型](https://images.gitee.com/uploads/images/2019/0701/001953_dd7a387e_123301.png "数据库模型.png")

### 界面风格
![登录界面](https://images.gitee.com/uploads/images/2019/0617/214247_d40363b4_123301.png "登录界面.png")
![权限界面](https://images.gitee.com/uploads/images/2019/0701/002825_84195403_123301.png "权限列表.png")
![权限添加](https://images.gitee.com/uploads/images/2019/0701/002939_3514f4b9_123301.png "权限添加.png")
![修改角色](https://images.gitee.com/uploads/images/2019/0701/003259_7c28607d_123301.png "屏幕截图.png")
![表单构建](https://images.gitee.com/uploads/images/2019/0610/014618_33e1edf9_123301.png "表单构建.png")
![邮件发送功能](https://images.gitee.com/uploads/images/2019/0701/003722_d73d40a5_123301.png "邮件发送功能.png")
![首页](https://images.gitee.com/uploads/images/2019/0609/210649_a934ea28_123301.png "首页.png")
![swagger2](https://images.gitee.com/uploads/images/2019/0609/210335_d3efad8c_123301.png "swagger2.png")
### 后台代码注释风格
![后台代码](https://images.gitee.com/uploads/images/2018/0909/203106_52eca8e3_123301.jpeg "1.jpg")
![后台代码](https://images.gitee.com/uploads/images/2018/0909/203112_278db2f4_123301.jpeg "2.jpg")
![后台代码](https://images.gitee.com/uploads/images/2018/0909/203118_39d8b7cd_123301.jpeg "3.jpg")
![后台代码](https://images.gitee.com/uploads/images/2018/0909/203125_a362822a_123301.jpeg "4.jpg")


### 前端代码注释风格
![HTML代码页面](https://images.gitee.com/uploads/images/2018/0822/004608_c55d62a4_123301.jpeg "HTML代码页面.jpg")
![js引入](https://images.gitee.com/uploads/images/2018/0909/203322_6dc467c2_123301.jpeg "js引入.jpg")

### 代码自动生成功能
![自动生成代码](https://images.gitee.com/uploads/images/2019/0514/003054_e99cdee7_123301.png "自动生成页面.png")
![代码生成](https://images.gitee.com/uploads/images/2019/0514/003215_127c9010_123301.png "代码自动生成文件.png")



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

### 开发者联系
- QQ：87766867 
- QQ群：881799237 
<a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=a8770621a7c51a904d667db47312b320d30e5c5581bb46103c2d5a8486cb8dce"><img border="0" src="https://images.gitee.com/uploads/images/2019/0530/203513_ac6773bf_123301.png" alt="SrpringBoot-v2" title="SrpringBoot-v2"></a>  进群备注springbootv2

有任何问题可以提出


### 注意事项
- 所有的model字段解释都在mysql的字段注释里面，请具体查看mysql的字段注解



### Github
- 所有的github代码 以码云更新为准
- https://github.com/fuce1314/Springboot_v2


### bug 列表
 1、 目前发现权限添加的时候好像父级id我还没写好。。。等中秋一起撸完，你们先star 下，中秋后在下【20180922 1:30 已修改】

### wiki
- https://gitee.com/bdj/SpringBoot_v2/wikis

### Java公众号推荐:
![输入图片说明](https://images.gitee.com/uploads/images/2019/0515/105530_93e6ed60_123301.png "java葵花宝典.png")

### 大神QQ群推荐:
- ![输入图片说明](https://images.gitee.com/uploads/images/2019/0530/203517_7ec233e5_123301.png "我萌的征途是架构狮！群聊二维码.png")

### 项目视频列表
- 自动生成代码视频：https://url.cn/58DDn5Y

### 更新日志
springbootv2大更新功能[20190501]
- https://gitee.com/bdj/SpringBoot_v2/wikis/%E6%9B%B4%E6%96%B0%E6%97%A5%E5%BF%97?sort_id=1452970

### 感谢开源软件列表
1. 人人renren-generator 自动生成项目参照人人自动生成 https://gitee.com/renrenio/renren-generator


### 感谢参与人员列表
- 霜花似雪  lhf2013 (lhf20132175@163.com)
- ok克里斯汀 okkristen
- lhf20132175@163.com

