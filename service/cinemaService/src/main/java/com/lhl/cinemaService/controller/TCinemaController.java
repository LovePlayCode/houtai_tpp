package com.lhl.cinemaService.controller;


import com.lhl.cinemaService.service.TCinemaService;
import com.lhl.entity.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 电影院详细信息 前端控制器
 * </p>
 *
 * @author lhl
 * @since 2022-08-04
 */
@RestController
@RequestMapping("/cinemaService/t-cinema")
public class TCinemaController {
    // 注入相关service
    @Autowired
    TCinemaService ccingService;
    // 获取电影院数据
    @GetMapping("/getAllCinema")
    public R getAllCinema(){
        return R.ok().data("item",ccingService.list(null));
    }
    // 根据电影id查询电影院信息
    @GetMapping("getCinema/{tid}")
    public R getCinema(@PathVariable String tid){
        return null;
    }
}

