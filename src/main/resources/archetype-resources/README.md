# demo

 demo project

####模块说明

code-generator: 简单代码生成器，从表产生domain，repository，service骨架

core: 核心模块，service 等方法存放位置

court-web: web启动模块

####启动(使用公共数据库)

一般情况下，使用公共数据库开发即可

使用参数 `--spring.profiles.active=dev` 启动 `DemoApplication` (数据库使用rds,信息参考application-dev.yml)

浏览器访问: `http://localhost:8081`

管理员： admin/admin123

####如何使用本地数据库开发

如果想使用本地数据库开发，参考如下：

在本地数据库中创建数据库

复制`applicaiton-dev.yml`为`application-local.yml`,修改其中数据库连接信息

`application-local.yml`中，修改`flyway.enable=true`

使用参数 `--spring.profiles.active=local` 启动 `DemoApplication` (flyway会自动初始化数据库表信息)

浏览器访问: `http://localhost:8081`

管理员： admin/admin123

####开发规范

dev过程中的sql，请放入docs/sql中
java代码规范，请使用`阿里巴巴代码规范检查插件`，修复插件检查报错.

####代码生成器使用说明
在数据库中创建好需要的表

配置`generatorExtend.properties`中的数据库连接信息，代码产生的包名信息

执行`CodeGeneratorMain`，代码会产生在`gen-code`目录中


