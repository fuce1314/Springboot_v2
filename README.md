### 公告

由于以前的v2有白屏bug（偶尔需要点击2次才能展示内容，无法debug），个人无法解决，v2以前全新换皮肤。如果你要研究可以查看分支：【20210101v2】
sa-token为最新皮肤


### 前言
- SpringBoot_v2项目是努力打造springboot框架的极致细腻的脚手架。包括一套漂亮的前台。无其他杂七杂八的功能，原生纯净。
- 服务器演示：http://124.70.187.180:8080/springboot_v2/ 账号:admin 密码:admin
老版本v2分支为[20210101v2](https://gitee.com/bdj/SpringBoot_v2/tree/20210101v2/)
目前mater为新皮肤

### 项目介绍
  基于springboot的一款纯净脚手架。努力打造一款免费开源、注释全、文档全适合新手学习、方便快速二次开发的框架。
##### 1. 没有基础版、没有vip版本、没有付费群、没有收费二维码
##### 2. 遵循开源真谛，一切免费才是真开源
##### 3. 不求回报，你使用快乐就是这个项目最大的快乐！

### 分支介绍

| 版本名称 | 说明 | 地址 |
| :---: | :---: | :---: |
| master | 主分支 | https://gitee.com/bdj/SpringBoot_v2 |
| mybatis-plus | 持久层框架升级为mybatis-plus | https://gitee.com/bdj/SpringBoot_v2/tree/mybatis-plus/ |
| 20210101v2 | 老版本v2 | https://gitee.com/bdj/SpringBoot_v2/tree/20210101v2/ |


### 开发环境
- JDK8.0
- mysql5.7以上
- eclipse

### 资源下载
- JDK8 http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
- Maven http://maven.apache.org/download.cgi
- minio http://www.minio.org.cn/ （文件存储）


### 部署流程
1. 导入doc文件夹里面的springbootv2.sql到数据库
2. 确认自己的mysql版本 进行修改jar  在pom.xml 73-84行
3. 修改application-dev.yml 里面自己数据库版本对应的jdbc链接
4. 正常启动run SpringbootSwagger2Application.java
- wiki地址:https://gitee.com/bdj/SpringBoot_v2/wikis

### 打包发布编译流程
- maven编译安装pom.xml文件即可打包成war

### 登陆地址
- 服务器:http://124.70.187.180:8080/springboot_v2/ 该数据库只有查询权限跟新增权限，所以修改以及删除会报错
- 本地 http://localhost:8080   默认帐号密码: admin/admin
- swagger  http://localhost:8080/swagger-ui.html

### 启动类
- SpringbootStart 启动类



### 新界面风格
|![输入图片说明](https://images.gitee.com/uploads/images/2021/0101/134930_749be44d_123301.png "屏幕截图.png")  | ![输入图片说明](https://images.gitee.com/uploads/images/2021/0101/135013_703123c3_123301.png "屏幕截图.png")    |
| --- | --- |
|![输入图片说明](https://images.gitee.com/uploads/images/2021/0101/135035_24fdcafb_123301.png "屏幕截图.png")    | ![输入图片说明](https://images.gitee.com/uploads/images/2021/0101/135102_7ba9097f_123301.png "屏幕截图.png")     |

### 数据库模型
![数据库模型](https://images.gitee.com/uploads/images/2019/0701/001953_dd7a387e_123301.png "数据库模型.png")


### 后台代码注释风格

|![后台代码](https://images.gitee.com/uploads/images/2018/0909/203106_52eca8e3_123301.jpeg "1.jpg")   | ![后台代码](https://images.gitee.com/uploads/images/2018/0909/203112_278db2f4_123301.jpeg "2.jpg")  |
|---|---|
|![后台代码](https://images.gitee.com/uploads/images/2018/0909/203118_39d8b7cd_123301.jpeg "3.jpg")   |  ![后台代码](https://images.gitee.com/uploads/images/2018/0909/203125_a362822a_123301.jpeg "4.jpg") |


### 前端代码注释风格
![HTML代码页面](https://images.gitee.com/uploads/images/2018/0822/004608_c55d62a4_123301.jpeg "HTML代码页面.jpg")
![js引入](https://images.gitee.com/uploads/images/2018/0909/203322_6dc467c2_123301.jpeg "js引入.jpg")


### 情况说明
- 如果您喜欢Springboot_v2，可以clone下来使用，您的star将是本人前进的动力，如果您有技术疑问，可以加群交流。
- 如果Springboot_v2对您有一点帮助，您可以点个star，就是对作者最大的支持了。
- Springboot_v2脚手架会一直更新下去。
- 需要进项目一起开发的请进群私聊我，让我们一起维护这个开发项目
- 很多人反应说404，那是因为其他页面根本没做，因为权限脚手架只在系统设置里面。我留着其他链接，是方便你们根据需求自行添加页面

### 开发者联系
- QQ：87766867 
- QQ群：1057709523 
<a target="_blank" href="https://jq.qq.com/?_wv=1027&k=EJrZ3wXI"><img border="0" src="https://images.gitee.com/uploads/images/2019/0530/203513_ac6773bf_123301.png" alt="SrpringBoot-v2" title="SrpringBoot-v2"></a>  进群备注springbootv2

有任何问题可以提出


### 注意事项
- 所有的model字段解释都在mysql的字段注释里面，请具体查看mysql的字段注解


### Github
- 所有的github代码 以码云更新为准
- https://github.com/fuce1314/Springboot_v2

### wiki
- https://gitee.com/bdj/SpringBoot_v2/wikis

### 项目视频列表
- 自动生成代码视频：qq群文件里面

### 更新日志
- https://gitee.com/bdj/SpringBoot_v2/wikis/%E6%9B%B4%E6%96%B0%E6%97%A5%E5%BF%97?sort_id=1452970


### 参与开源作者

![荣誉殿堂](https://images.gitee.com/uploads/images/2019/0903/224111_37b4d05e_123301.png "荣誉殿堂.png")


| 名字        | 联系方式                | 贡献功能           | 其他                                   |
| ----------- | ----------------------- | ------------------ | -------------------------------------- |
| 霜花似雪                    |QQ2510736432             | bug修改                                         |                                      |
| modelc      |QQ1219171582             | 框架结构整理                                |                                        |
| ok 克里斯汀          |                         | 增加 druid 连接池                  |                                        |
| JanHezz     |QQ975532442              | 引入了 quartz 框架              | 个人博客推荐：http://www.luckyhe.com        |
| 一休                           |QQ438081243              | 添加字典表模块                            | 码云地址：https://gitee.com/notutu      |
| 愿得一人心               |QQ1065001748             | 修改 try 流 bug       | 个人博客推荐：https://www.songyaxu.com      |
| Aini-H      |QQ1057718016             | 七牛云上传                                   |                                        |


### 借鉴项目列表
- https://gitee.com/renrenio/renren-generator 人人得代码自动生成，改成自动录入数据库
- https://gitee.com/y_project/RuoYi-fast 借鉴ry.js




### 精品项目推荐

|项目名称 | 项目地址 | 项目介绍 |
|---|---|---|
| Jpom GVP项目      | [https://gitee.com/dromara/Jpom](https://gitee.com/dromara/Jpom) | 一款简而轻的低侵入式在线构建、自动部署、日常运维、项目监控软件|
| AgileBPM GVP项目  | [https://gitee.com/agile-bpm](https://gitee.com/agile-bpm)  | 专注于解决企业工作流实施难的问题  |
| AlibabaCloud     | [https://gitee.com/matevip/matecloud](https://gitee.com/matevip/matecloud)  | MateCloud是一款基于Spring Cloud Alibaba的微服务架构 |
| ApiBoot | [https://gitee.com/minbox-projects/api-boot](https://gitee.com/minbox-projects/api-boot)    | 为接口服务而生  |
| v2皮肤           | [https://gitee.com/Jmysy/Pear-Admin-Layui](https://gitee.com/pear-admin/Pear-Admin-Layui)                   |
                                                                                 

### Java公众号推荐:
![输入图片说明](https://images.gitee.com/uploads/images/2019/0515/105530_93e6ed60_123301.png "java葵花宝典.png")


### 使用v2做得系统

- SpringBoot_v2 极简代码生成器
https://gitee.com/dubai03/Codegenerator_v2

###牛油果
[![Giteye chart](https://chart.giteye.net/gitee/bdj/SpringBoot_v2/Q9GZ48L3.png)](https://giteye.net/chart/Q9GZ48L3)
