package com.lhl.moviedataser.service;

import com.lhl.entity.MovieData;
import com.lhl.moviedataser.entity.MMovie;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 * 电影首页表 服务类
 * </p>
 *
 * @author lhl
 * @since 2022-08-01
 */
public interface MMovieService extends IService<MMovie> {
    public List<MovieData> getMovieByTid(String cid);
}
