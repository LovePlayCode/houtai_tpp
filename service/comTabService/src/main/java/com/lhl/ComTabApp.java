package com.lhl;

import io.swagger.annotations.ApiModelProperty;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication()
// 添加bean扫描
//@ComponentScan(basePackages = {"com.lhl"})
// 扫描mapper
@MapperScan("com.lhl.comTabSer.mapper")
@EnableDiscoveryClient
// 开启feign
@EnableFeignClients
public class ComTabApp {
    public static void main(String[] args) {
        SpringApplication.run(ComTabApp.class,args);
    }
}
