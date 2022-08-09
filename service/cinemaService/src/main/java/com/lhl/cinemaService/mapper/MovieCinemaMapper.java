package com.lhl.cinemaService.mapper;

import com.lhl.cinemaService.entity.MovieCinema;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.lhl.cinemaService.entity.TCinema;

import java.util.List;

/**
 * <p>
 * 电影院与电影多对多关系表; Mapper 接口
 * </p>
 *
 * @author lhl
 * @since 2022-08-04
 */
public interface MovieCinemaMapper extends BaseMapper<MovieCinema> {
    // 根据电影id获取电影院信息
    public List<TCinema> getcinemaById(String id);
}
