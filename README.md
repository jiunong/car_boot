# 工程简介

## MVC
### MVC简介
这个工程给同学们呈现一个可以学习MVC相关知识的场景。工程上的逻辑是 Thymeleaf（前端触发） + Controller（接收前段请求，并调用Service） + Service（接收到请求后调用Mybatis） + Mybatis（Java访问数据库的方法） + H2（一个内置的数据库）。

### MVC工程解读

```
.
├── README.md
├── model //这个module下定义了Mybatis
│   ├── pom.xml
│   └── src
│       └── main
│           └── java
│               └── com
│                   └── example
│                           └── mybatis//这个文件下的内容与start/resource/mappers下的mapper文件配合，可以在不实现接口的情况下直接读写数据库。这是Mybatis的特性
│                               ├── config
│                               │   └── MybatisDemoConfig.java //配置项，作用在于传递@ScanMapper的注解
│                               ├── entity
│                               │   └── MybatisDemoUser.java//数据实体，相当于我们从数据库中存取的内容
│                               └── mapper
│                                   └── MybatisDemoUserMapper.java//定义了读写的接口，具体实现在mapper文件中
├── pom.xml
├── service//负责业务逻辑
│   ├── pom.xml
│   ├── service.iml
│   └── src
│       └── main
│           └── java
│               └── com
│                   └── example
│                           ├── GetUserInfoService.java//Service的接口
│                           └── impl
│                               └── GetUserInfoServiceImpl.java//Service接口的实现
├── start//负责Spring程序启动
│   ├── pom.xml
│   └── src
│        └── main
│            ├── java
│            │   └── com
│            │       └── example
│            │               └── start
│            │                   └── Application.java//启动类
│            └── resources//所有的资源文件都放在了这里
│                ├── application.properties//程序配置
│                ├── V1__initData.sql//向数据库中插入数据的语句
│                ├── mappers
│                │   └── mybatisdemouser-mapper.xml//Mapper文件，定义了model下的接口文件对应的MySql语句
│                ├── schema.sql//在数据库中建立表的语句
│                ├── static//静态网页文件
│                │   └── index.html
│                └── templates//Thymeleaf动态模板网页文件
│                    └── greeting.html
│  
├── tree
└── web//负责接收前端映射，并调用业务逻辑返回给前端
    ├── pom.xml
    └── src
        └── main
            └── java
                └── com
                    └── example
                            └── controller
                                └── GreetingController.java//Controller，用于接收映射

39 directories, 31 files
```

# 延伸阅读

### MVC延伸阅读

Mybatis：https://mybatis.org/mybatis-3/zh/index.html

Thymeleaf: https://www.thymeleaf.org/

H2 Database: https://www.h2database.com/html/main.html

阿里脚手架：http://start.aliyun.com/
