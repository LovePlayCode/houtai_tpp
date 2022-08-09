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
