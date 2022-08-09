package com.lhl.cinemaService.controller;


import com.lhl.cinemaService.service.MovieCinemaService;
import com.lhl.entity.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 电影院与电影多对多关系表; 前端控制器
 * </p>
 *
 * @author lhl
 * @since 2022-08-04
 */
@RestController
@RequestMapping("/cinemaService/movie-cinema")
public class MovieCinemaController {
    // 注入服务
    @Autowired
    MovieCinemaService movieCinemaService;
    @GetMapping("getCinema/{tid}")
    public R getCinemaByid(@PathVariable String tid){

        return R.ok().data("cinemas",movieCinemaService.getcinemaById(tid));
    }
}

