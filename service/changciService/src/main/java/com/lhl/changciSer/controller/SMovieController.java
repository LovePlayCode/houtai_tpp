package com.lhl.changciSer.controller;


import com.lhl.changciSer.entity.ChangCIInfo;
import com.lhl.changciSer.service.Feign.MovieDataSer;
import com.lhl.changciSer.service.SMovieService;
import com.lhl.entity.MovieData;
import com.lhl.entity.R;
import com.sun.xml.internal.ws.util.StringUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 场次表; 前端控制器
 * </p>
 *
 * @author lhl
 * @since 2022-08-05
 */
@Slf4j
@RestController
@RequestMapping("/changciSer/s-movie")
public class SMovieController {
    @Autowired
    SMovieService sMovieService;
    @Autowired
    MovieDataSer movieDataSer;
    @GetMapping("getAllChangCi")
    public R getAllChangCi(@RequestParam("cid")String c_id,@RequestParam("tid")String t_id){
        return R.ok().data("items",sMovieService.getALlChangCiByCinIdAndMid(c_id,t_id));
    }
    @GetMapping("getChangciData/{cid}")
    public R getChangciData(@PathVariable("cid") String cid){
        List<ChangCIInfo> changCiAll = sMovieService.getChangCiAll(cid);
        return R.ok().data("data",changCiAll);
    }

}

