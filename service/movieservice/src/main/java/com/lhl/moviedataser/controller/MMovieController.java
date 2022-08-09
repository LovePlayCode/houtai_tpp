package com.lhl.moviedataser.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.lhl.entity.MovieData;
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
import java.util.List;

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
    @GetMapping("getChangciData/{cid}")
    public List<MovieData> getChangciData(@PathVariable String cid){
        return movieService.getMovieByTid(cid);
    }
}

