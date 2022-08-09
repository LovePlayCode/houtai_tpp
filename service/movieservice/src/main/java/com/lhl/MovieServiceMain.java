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
// 开启feign
@EnableFeignClients
public class MovieServiceMain {
    public static void main(String[] args) {
//        SpringBootApplication.run(MovieServiceMain.class,args);
        SpringApplication.run(MovieServiceMain.class,args);
    }
}
