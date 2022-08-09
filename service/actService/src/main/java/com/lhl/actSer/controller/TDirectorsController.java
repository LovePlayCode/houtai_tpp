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

