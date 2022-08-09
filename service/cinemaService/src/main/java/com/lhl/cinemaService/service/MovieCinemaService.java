package com.lhl.cinemaService.service;

import com.lhl.cinemaService.entity.MovieCinema;
import com.baomidou.mybatisplus.extension.service.IService;
import com.lhl.cinemaService.entity.TCinema;

import java.util.List;

/**
 * <p>
 * 电影院与电影多对多关系表; 服务类
 * </p>
 *
 * @author lhl
 * @since 2022-08-04
 */
public interface MovieCinemaService extends IService<MovieCinema> {
    public List<TCinema> getcinemaById(String id);
}
