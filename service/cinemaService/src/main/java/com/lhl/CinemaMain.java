package com.lhl;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@MapperScan("com.lhl.cinemaService.mapper")
@EnableDiscoveryClient
@EnableFeignClients
public class CinemaMain {
    public static void main(String[] args) {
        SpringApplication.run(CinemaMain.class,args);
    }
}
