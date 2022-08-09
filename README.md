#  淘票票java后台springcould项目

##  环境准备

本项目所使用的技术有:

spring+springcloud全家桶+nacos+mysql8.0+

这套项目配合前端项目使用。

数据库中只有部分数据，因为数据量太多(本人懒得爬了,淘票票官网有加密)如果需要完整查看项目效果请自行添加数据。

sql文件在根目录。

在idea中新建父工程

tppparent

在pom文件中引入依赖

```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>com.lhl</groupId>
    <artifactId>tppparent</artifactId>
    <packaging>pom</packaging>
    <version>1.0-SNAPSHOT</version>
    <modules>
        <module>service</module>
        <module>comment</module>
    </modules>
    <name>tpp_parent</name>
    <parent>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-parent</artifactId>
        <version>2.2.1.RELEASE</version>
        <relativePath/> <!-- lookup parent from repository -->
    </parent>

    <properties>
        <java.version>1.8</java.version>
<!--        <guli.version>0.0.1-SNAPSHOT</guli.version>-->
        <mybatis-plus.version>3.0.5</mybatis-plus.version>
        <velocity.version>2.0</velocity.version>
        <swagger.version>2.7.0</swagger.version>
        <aliyun.oss.version>2.8.3</aliyun.oss.version>
        <jodatime.version>2.10.1</jodatime.version>
        <poi.version>3.17</poi.version>
        <commons-fileupload.version>1.3.1</commons-fileupload.version>
        <commons-io.version>2.6</commons-io.version>
        <httpclient.version>4.5.1</httpclient.version>
        <jwt.version>0.7.0</jwt.version>
        <aliyun-java-sdk-core.version>4.3.3</aliyun-java-sdk-core.version>
        <aliyun-sdk-oss.version>3.1.0</aliyun-sdk-oss.version>
        <aliyun-java-sdk-vod.version>2.15.2</aliyun-java-sdk-vod.version>
        <aliyun-java-vod-upload.version>1.4.11</aliyun-java-vod-upload.version>
        <aliyun-sdk-vod-upload.version>1.4.11</aliyun-sdk-vod-upload.version>
        <fastjson.version>1.2.28</fastjson.version>
        <gson.version>2.8.2</gson.version>
        <json.version>20170516</json.version>
        <commons-dbutils.version>1.7</commons-dbutils.version>
        <canal.client.version>1.1.0</canal.client.version>
        <docker.image.prefix>zx</docker.image.prefix>
        <cloud-alibaba.version>0.2.2.RELEASE</cloud-alibaba.version>
    </properties>
    <dependencyManagement>
        <dependencies>
            <!--Spring Cloud-->
            <dependency>
                <groupId>org.springframework.cloud</groupId>
                <artifactId>spring-cloud-dependencies</artifactId>
                <version>Hoxton.RELEASE</version>
                <type>pom</type>
                <scope>import</scope>
            </dependency>

            <dependency>
                <groupId>org.springframework.cloud</groupId>
                <artifactId>spring-cloud-alibaba-dependencies</artifactId>
                <version>${cloud-alibaba.version}</version>
                <type>pom</type>
                <scope>import</scope>
            </dependency>
            <!--mybatis-plus 持久层-->
            <dependency>
                <groupId>com.baomidou</groupId>
                <artifactId>mybatis-plus-boot-starter</artifactId>
                <version>${mybatis-plus.version}</version>
            </dependency>

            <!-- velocity 模板引擎, Mybatis Plus 代码生成器需要 -->
            <dependency>
                <groupId>org.apache.velocity</groupId>
                <artifactId>velocity-engine-core</artifactId>
                <version>${velocity.version}</version>
            </dependency>


            <!--swagger-->
            <dependency>
                <groupId>io.springfox</groupId>
                <artifactId>springfox-swagger2</artifactId>
                <version>${swagger.version}</version>
            </dependency>
            <!--swagger ui-->
            <dependency>
                <groupId>io.springfox</groupId>
                <artifactId>springfox-swagger-ui</artifactId>
                <version>${swagger.version}</version>
            </dependency>



            <!--日期时间工具-->
            <dependency>
                <groupId>joda-time</groupId>
                <artifactId>joda-time</artifactId>
                <version>${jodatime.version}</version>
            </dependency>

            <!--xls-->
            <dependency>
                <groupId>org.apache.poi</groupId>
                <artifactId>poi</artifactId>
                <version>${poi.version}</version>
            </dependency>
            <!--xlsx-->
            <dependency>
                <groupId>org.apache.poi</groupId>
                <artifactId>poi-ooxml</artifactId>
                <version>${poi.version}</version>
            </dependency>

            <!--文件上传-->
            <dependency>
                <groupId>commons-fileupload</groupId>
                <artifactId>commons-fileupload</artifactId>
                <version>${commons-fileupload.version}</version>
            </dependency>

            <!--commons-io-->
            <dependency>
                <groupId>commons-io</groupId>
                <artifactId>commons-io</artifactId>
                <version>${commons-io.version}</version>
            </dependency>

            <!--httpclient-->
            <dependency>
                <groupId>org.apache.httpcomponents</groupId>
                <artifactId>httpclient</artifactId>
                <version>${httpclient.version}</version>
            </dependency>

            <dependency>
                <groupId>com.google.code.gson</groupId>
                <artifactId>gson</artifactId>
                <version>${gson.version}</version>
            </dependency>

            <!-- JWT -->
            <dependency>
                <groupId>io.jsonwebtoken</groupId>
                <artifactId>jjwt</artifactId>
                <version>${jwt.version}</version>
            </dependency>

            <!--aliyun-->
            <dependency>
                <groupId>com.aliyun</groupId>
                <artifactId>aliyun-java-sdk-core</artifactId>
                <version>${aliyun-java-sdk-core.version}</version>
            </dependency>
            <dependency>
                <groupId>com.aliyun.oss</groupId>
                <artifactId>aliyun-sdk-oss</artifactId>
                <version>${aliyun-sdk-oss.version}</version>
            </dependency>
            <dependency>
                <groupId>com.aliyun</groupId>
                <artifactId>aliyun-java-sdk-vod</artifactId>
                <version>${aliyun-java-sdk-vod.version}</version>
            </dependency>
            <dependency>
                <groupId>com.aliyun</groupId>
                <artifactId>aliyun-java-vod-upload</artifactId>
                <version>${aliyun-java-vod-upload.version}</version>
            </dependency>
            <dependency>
                <groupId>com.aliyun</groupId>
                <artifactId>aliyun-sdk-vod-upload</artifactId>
                <version>${aliyun-sdk-vod-upload.version}</version>
            </dependency>
            <dependency>
                <groupId>com.alibaba</groupId>
                <artifactId>fastjson</artifactId>
                <version>${fastjson.version}</version>
            </dependency>
            <dependency>
                <groupId>org.json</groupId>
                <artifactId>json</artifactId>
                <version>${json.version}</version>
            </dependency>

            <dependency>
                <groupId>commons-dbutils</groupId>
                <artifactId>commons-dbutils</artifactId>
                <version>${commons-dbutils.version}</version>
            </dependency>

            <dependency>
                <groupId>com.alibaba.otter</groupId>
                <artifactId>canal.client</artifactId>
                <version>${canal.client.version}</version>
            </dependency>
        </dependencies>
    </dependencyManagement>
    <build>
        <plugins>
            <plugin>
                <groupId>org.springframework.boot</groupId>
                <artifactId>spring-boot-maven-plugin</artifactId>
            </plugin>
        </plugins>
    </build>
</project>
```

在父工程下面创建子工程

![image-20220801174554614](/Users/lhl/Library/Application Support/typora-user-images/image-20220801174554614.png)

添加对应依赖。

###  配置swagger

引入依赖

```xml
<dependency>
            <groupId>io.springfox</groupId>
            <artifactId>springfox-swagger2</artifactId>
            <scope>provided </scope>
        </dependency>
        <dependency>
            <groupId>io.springfox</groupId>
            <artifactId>springfox-swagger-ui</artifactId>
            <scope>provided </scope>
        </dependency>
```

写一个自动配置类

```java
package com.lhl.config;

import com.google.common.base.Predicates;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;
import springfox.documentation.service.Contact;

@Configuration
@EnableSwagger2
/**
 * 配置swagger接口调试工具
 */
public class Myconfig {
    @Bean
    public Docket webApiConfig(){

        return new Docket(DocumentationType.SWAGGER_2)
                .groupName("webApi")
                .apiInfo(webApiInfo())
                .select()
//                .paths(Predicates.not(PathSelectors.regex("/admin/.*")))
                .paths(Predicates.not(PathSelectors.regex("/error.*")))
                .build();

    }

    private ApiInfo webApiInfo(){

        return new ApiInfoBuilder()
                .title("网站-课程中心API文档")
                .description("本文档描述了课程中心微服务接口定义")
                .version("1.0")
                .contact(new Contact("Helen", "http://atguigu.com", "55317332@qq.com"))
                .build();
    }

}

```

在对应的模块引入即可使用swagger进行接口测试

![image-20220801174851115](/Users/lhl/Library/Application Support/typora-user-images/image-20220801174851115.png)

###  配置nacos服务注册中心 

首先下载nacos

地址::  https://github.com/alibaba/nacos/releases/tag/1.4.3

⚠️注意: 最新版2+版本nacos不可以使用  亲测1.4.3可以使用。

在application.properties添加以下配置

```
spring.cloud.nacos.discovery.server-addr=127.0.0.1:8848
```

![image-20220801182118524](/Users/lhl/Library/Application Support/typora-user-images/image-20220801182118524.png)

配置成功

###  配置getway网关

在pom文件中导入依赖

```xml
<dependencies>
        <dependency>
            <groupId>com.atguigu</groupId>
            <artifactId>common-utils</artifactId>
            <version>0.0.1-SNAPSHOT</version>
        </dependency>

        <dependency>
            <groupId>org.springframework.cloud</groupId>
            <artifactId>spring-cloud-starter-alibaba-nacos-discovery</artifactId>
        </dependency>

        <dependency>
            <groupId>org.springframework.cloud</groupId>
            <artifactId>spring-cloud-starter-gateway</artifactId>
        </dependency>

        <!--gson-->
        <dependency>
            <groupId>com.google.code.gson</groupId>
            <artifactId>gson</artifactId>
        </dependency>

        <!--服务调用-->
        <dependency>
            <groupId>org.springframework.cloud</groupId>
            <artifactId>spring-cloud-starter-openfeign</artifactId>
        </dependency>
    </dependencies>
```

编写yaml配置文件

```yaml
# 配置端口
server:
  port: 8222
#  配置服务网名
spring:
  application:
    name: service-gateway
    # 注册进入nacos
  cloud:
    nacos:
      discovery:
        server-addr: 127.0.0.1:8848
    gateway:
      discovery:
        locator:
          enabled: true
      routes:
        - id: service_mov
          uri: lb://service_mov
          predicates:
            - Path=/service_mov/**

```

编写启动类

```java
package com.lhl;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.ComponentScan;    
public class ApiGateWayApplication {
    public static void main(String[] args) {
        SpringApplication.run(ApiGateWayApplication.class, args);
    }
}

```

添加配置类实现跨域

```java
package com.lhl.api_getway.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.reactive.CorsWebFilter;
import org.springframework.web.cors.reactive.UrlBasedCorsConfigurationSource;
import org.springframework.web.util.pattern.PathPatternParser;
/*
    配置跨域
* */
@Configuration
public class CorsConfig {
    @Bean
    public CorsWebFilter corsFilter() {
        CorsConfiguration config = new CorsConfiguration();
        config.addAllowedMethod("*");
        config.addAllowedOrigin("*");
        config.addAllowedHeader("*");

        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource(new PathPatternParser());
        source.registerCorsConfiguration("/**", config);

        return new CorsWebFilter(source);
    }
}

```

##  新建一个电影模块服务



1. 将新建的模块配置进入getway,并新建application.properties

   ```yaml
       gateway:
         discovery:
           locator:
             enabled: true
         routes:
           - id: service-mov
             uri: lb://service-mov
             predicates:
               - Path=/service-mov/**
   ```

   

```properties
# 端口号
server.port=8001
# 服务名
spring.application.name=service-mov
# mysql数据库连接
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.datasource.url=jdbc:mysql://localhost:3306/tpp?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8
spring.datasource.username=root
spring.datasource.password=111111
spring.jackson.date-format=yyyy-MM-dd HH:mm:ss
spring.jackson.time-zone=GMT+8
# 将服务注册入nacos
spring.cloud.nacos.discovery.server-addr=127.0.0.1:8848
```

2. 新建启动类

   ```java
   package com.lhl;
   
   
   import org.mybatis.spring.annotation.MapperScan;
   import org.springframework.boot.autoconfigure.SpringBootApplication;
   import org.springframework.boot.SpringApplication;
   import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
   import org.springframework.cloud.openfeign.EnableFeignClients;
   import org.springframework.context.annotation.ComponentScan;
   
   @SpringBootApplication()
   // 添加bean扫描
   //@ComponentScan(basePackages = {"com.lhl"})
   // 扫描mapper
   @MapperScan("com.lhl.moviedataser.mapper")
   @EnableDiscoveryClient
   @EnableFeignClients
   public class MovieServiceMain {
       public static void main(String[] args) {
   //        SpringBootApplication.run(MovieServiceMain.class,args);
           SpringApplication.run(MovieServiceMain.class,args);
       }
   }
   ```

   3. 使用mybatis.plus生成代码

      ```java
      /**
       *  代码生成器
       * */
      
      import com.baomidou.mybatisplus.annotation.DbType;
      import com.baomidou.mybatisplus.annotation.IdType;
      import com.baomidou.mybatisplus.generator.AutoGenerator;
      import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
      import com.baomidou.mybatisplus.generator.config.GlobalConfig;
      import com.baomidou.mybatisplus.generator.config.PackageConfig;
      import com.baomidou.mybatisplus.generator.config.StrategyConfig;
      import com.baomidou.mybatisplus.generator.config.rules.DateType;
      import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
      import org.junit.Test;
      public class CodeGenerator {
      
          @Test
          public void run() {
      
              // 1、创建代码生成器
              AutoGenerator mpg = new AutoGenerator();
      
              // 2、全局配置
              GlobalConfig gc = new GlobalConfig();
              String projectPath = System.getProperty("user.dir");
      //        gc.setOutputDir("D:\\gui_parent\\service\\service-edu" + "/src/main/java");
              gc.setOutputDir("/Users/lhl/IdeaProjects/tppparent/service/movieservice/src/main/java");
              gc.setAuthor("lhl");
              gc.setOpen(false); //生成后是否打开资源管理器
              gc.setFileOverride(false); //重新生成时文件是否覆盖
              gc.setServiceName("%sService");	//去掉Service接口的首字母I
              gc.setIdType(IdType.ID_WORKER_STR); //主键策略
              gc.setDateType(DateType.ONLY_DATE);//定义生成的实体类中日期类型
              gc.setSwagger2(true);//开启Swagger2模式
      
              mpg.setGlobalConfig(gc);
      
              // 3、数据源配置
              DataSourceConfig dsc = new DataSourceConfig();
              dsc.setUrl("jdbc:mysql://localhost:3306/tpp?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8");
              dsc.setDriverName("com.mysql.cj.jdbc.Driver");
              dsc.setUsername("root");
              dsc.setPassword("111111");
              dsc.setDbType(DbType.MYSQL);
              mpg.setDataSource(dsc);
      
              // 4、包配置
              PackageConfig pc = new PackageConfig();
      
              pc.setParent("com.lhl");
              pc.setModuleName("moviedataser"); //模块名
              pc.setController("controller");
              pc.setEntity("entity");
              pc.setService("service");
              pc.setMapper("mapper");
              mpg.setPackageInfo(pc);
      
              // 5、策略配置
              StrategyConfig strategy = new StrategyConfig();
              strategy.setInclude("movie_detail");
              strategy.setNaming(NamingStrategy.underline_to_camel);//数据库表映射到实体的命名策略
              strategy.setTablePrefix(pc.getModuleName() + "_"); //生成实体时去掉表前缀
      
              strategy.setColumnNaming(NamingStrategy.underline_to_camel);//数据库表字段映射到实体的命名策略
              strategy.setEntityLombokModel(true); // lombok 模型 @Accessors(chain = true) setter链式操作
      
              strategy.setRestControllerStyle(true); //restful api风格控制器
              strategy.setControllerMappingHyphenStyle(true); //url中驼峰转连字符
      
              mpg.setStrategy(strategy);
      
      
              // 6、执行
              mpg.execute();
          }
      }
      ```

   4. 创建controller，返回前端页面需要的接口

      ```java
      package com.lhl.moviedataser.controller;
      
      
      import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
      import com.lhl.entity.R;
      import com.lhl.moviedataser.entity.MMovie;
      import com.lhl.moviedataser.service.MMovieService;
      import com.lhl.moviedataser.service.MovieDetailService;
      import lombok.extern.slf4j.Slf4j;
      import org.mybatis.spring.annotation.MapperScan;
      import org.springframework.beans.factory.annotation.Autowired;
      import org.springframework.context.annotation.ComponentScan;
      import org.springframework.stereotype.Component;
      import org.springframework.web.bind.annotation.*;
      
      import javax.annotation.Resource;
      
      /**
       * <p>
       * 电影首页表 前端控制器
       * </p>
       *
       * @author lhl
       * @since 2022-08-01
       */
      @RestController
      @RequestMapping("/service-mov/m-movie")
      @Slf4j
      public class MMovieController {
          @Autowired
          MMovieService movieService;
          @Resource
          MovieDetailService detailService;
          // 返回电影全部数据
          @GetMapping("/getAll")
          public R getAllData(){
              return R.ok().data("item",movieService.list(null));
          }
          // 根据电影id查询电影详细信息
          @GetMapping("/getById/{tid}")
          public R getByIdMovies(@PathVariable String tid){
              log.info("tid=="+tid);
              return R.ok().data("movie",detailService.getById(tid));
          }
          // 返回图片封面信息
          @GetMapping("/getImage/{tid}")
          public R getImageByTid(@PathVariable String tid){
              // 创建一个查询器
              QueryWrapper<MMovie> mMovieQueryWrapper = new QueryWrapper<>();
              mMovieQueryWrapper.eq("t_id",tid).select("t_image");
              MMovie one = movieService.getOne(mMovieQueryWrapper);
              return R.ok().data("image",one.getTImage());
      
          }
      }
      ```

这几个controller用于返回前端页面所需要的数据

## 新建演职员模块

1. 新建application.properties

   ```properties
   	# 端口号
   server.port=8002
   # 服务名
   spring.application.name=service-act
   # mysql数据库连接
   spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
   spring.datasource.url=jdbc:mysql://localhost:3306/tpp?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8
   spring.datasource.username=root
   spring.datasource.password=111111
   spring.jackson.date-format=yyyy-MM-dd HH:mm:ss
   spring.jackson.time-zone=GMT+8
   # 添加扫描xml文件位置
   mybatis-plus.mapper-locations=classpath:com/lhl/actSer/mapper/xml/*.xml
   
   # 将服务注册入nacos
   spring.cloud.nacos.discovery.server-addr=127.0.0.1:8848
   ```

2. 使用代码生成器生成需要代码

3. 新建启动类

   ```java
   package com.lhl;
   
   import org.mybatis.spring.annotation.MapperScan;
   import org.springframework.boot.SpringApplication;
   import org.springframework.boot.autoconfigure.SpringBootApplication;
   import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
   import org.springframework.cloud.openfeign.EnableFeignClients;
   
   @SpringBootApplication
   @MapperScan("com.lhl.actSer.mapper")
   // 开启服务发现
   @EnableDiscoveryClient
   // 开启远程调用
   @EnableFeignClients
   public class ActMain {
       public static void main(String[] args) {
           SpringApplication.run(ActMain.class,args);
       }
   }
   
   ```

   

4. 创建返回数据需要的controller

   ```java
   package com.lhl.actSer.controller;
   
   
   import com.lhl.actSer.entity.TDirectors;
   import com.lhl.actSer.service.TDirectorsService;
   import com.lhl.entity.R;
   import org.springframework.beans.factory.annotation.Autowired;
   import org.springframework.web.bind.annotation.GetMapping;
   import org.springframework.web.bind.annotation.PathVariable;
   import org.springframework.web.bind.annotation.RequestMapping;
   
   import org.springframework.web.bind.annotation.RestController;
   
   import java.util.ArrayList;
   import java.util.List;
   
   /**
    * <p>
    * 演职人员; 前端控制器
    * </p>
    *
    * @author lhl
    * @since 2022-08-03
    */
   @RestController
   @RequestMapping("/actSer/t-directors")
   public class TDirectorsController {
       @Autowired
       TDirectorsService tDirectorsService;
       @GetMapping("getAct/{tid}")
       public R getAct(@PathVariable String tid) {
           List<TDirectors> acts = tDirectorsService.getActsByMid(tid);
   //        导演
           List<TDirectors> dirActs = new ArrayList<>();
           // 演员
           List<TDirectors> commentActs = new ArrayList<>();
           // 将数据处理
           for (TDirectors act : acts) {
               if (act.getDType()==0){
                   dirActs.add(act);
               }else{
                   commentActs.add(act);
               }
           }
           return R.ok().data("director",dirActs).data("acts",commentActs);
       }
   }
   
   
   ```



5. 由于有个功能需要多表联查，在过程中发现xml文件不加载。 解决办法

   1. 首先在当前模块的配置文件中添加

      ``` 
      # 添加扫描xml文件位置
      mybatis-plus.mapper-locations=classpath:com/lhl/actSer/mapper/xml/*.xml
      ```

   2. 然后在父工程pom文件添加以下配置即可解决

      ```
      <build>
              <resources>
                  <resource>
                      <directory>src/main/java</directory>
                      <includes>
                          <include>**/*.xml</include>
                      </includes>
                      <filtering>false</filtering>
                  </resource>
              </resources>
          </build>
          
      ```

## 新建电影院相关服务类

1. 新建一个模块cinemaService
2. 在MovieCinemaMapper中新建一个getcinemaById方法,xml文件配置如下

```xml
<select id="getcinemaById" resultType="com.lhl.cinemaService.entity.TCinema">
        SELECT DISTINCT
            t_cinema.*
        FROM
            t_cinema
                LEFT JOIN movie_cinema mc ON mc.c_id = t_cinema.c_id
        WHERE
            mc.t_id = #{id}
    </select>
```

3. 在MovieCinemaService新建一个getcinemaById方法，这个方法用于通过电影id返回对应演出这个电影的电影院id
4. 在控制类中写入一个接口

```java
@GetMapping("getCinema/{tid}")
    public R getCinemaByid(@PathVariable String tid){

        return R.ok().data("cinemas",movieCinemaService.getcinemaById(tid));
    }
```



## 返回电影相关场次信息

mysql两个函数:

SELECT UNIX_TIMESTAMP() 将普通日期变成时间戳

SELECT FROM_UNIXTIME('1658851200')  将时间戳转变为普通日期

1. 新建一个模块chanceservice
2. 其他配置文件如上模块
3. 在mapper中定义一个查询方法 getALlChangCiByCinIdAndMid
4. 在xml中编写查询语句  

```xml
<select id="getALlChangCiByCinIdAndMid" resultType="com.lhl.changciSer.entity.SMovie">
        SELECT
            DISTINCT
            s.*
        FROM
            s_movie s
                LEFT JOIN movie_cinema mc on mc.s_id = s.s_id where  mc.c_id=#{param1} and mc.t_id = #{param2}
    </select>

```

5. 在service新建feign文件夹
6. 新建 MovieDataSer远程调用接口

```java
@Component
@FeignClient("service-mov")
public interface MovieDataSer {
    @GetMapping("/service-mov/m-movie/getChangciData/{cid}")
    public List<MovieData> getChangciData(@PathVariable("cid") String cid);
}

```

这个接口获取电影模块返回的根据电影院id获取的所演全部电影的信息。

7. 新建一个复合实体类，用于返回电影院场次信息。由于电影院包含电影信息和电影场次信息，所以实体类如下

```java
@Data
public class ChangCIInfo {
    MovieData movieData;
    List<SMovie> changcis;
}

```

8. 在SMovieService新建一个getChangCiAll方法
9. 在实现类中实现这个方法。具体做法为首先通过远程调用接口获取电影院所演的电影信息。然后通过for循环遍历，通过getALlChangCiByCinIdAndMid方法将每个电影的场次信息查询出来进行封装。 代码如下

```java
@Override
    public List<ChangCIInfo> getChangCiAll(String cid) {
        List<ChangCIInfo> resData= new ArrayList<>();
        List<MovieData> changciData = movieDataSer.getChangciData(cid);
        for (MovieData changciDatum : changciData) {
            ChangCIInfo changCIInfo = new ChangCIInfo();
            List<SMovie> aLlChangCiByCinIdAndMid = getALlChangCiByCinIdAndMid(cid, changciDatum.getTId());
            changCIInfo.setMovieData(changciDatum);
            changCIInfo.setChangcis(aLlChangCiByCinIdAndMid);
            resData.add(changCIInfo);
        }
        return resData;
    }
```

##  新建返回tab标签服务类

1. 新建一个comTabService用于返回电影标签和电影评论
2. 在控制器中新建一个接口方法用于返回对应的数据

```java
 @GetMapping("getCommentById")
    public R getCommentById(@RequestParam("tid")String id){
        QueryWrapper<Comment> commentQueryWrapper = new QueryWrapper<>();
        QueryWrapper<MovieCommenttype> movieCommenttypeQueryWrapper = new QueryWrapper<>();
        movieCommenttypeQueryWrapper.eq("t_id",id);

        commentQueryWrapper.eq("t_id",id);

        return R.ok().data("coms",commentService.list(commentQueryWrapper)).data("tabs",movieCommenttypeService.list(movieCommenttypeQueryWrapper));
    }
```


