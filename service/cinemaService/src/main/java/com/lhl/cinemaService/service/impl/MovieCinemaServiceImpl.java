package com.lhl.cinemaService.service.impl;

import com.lhl.cinemaService.entity.MovieCinema;
import com.lhl.cinemaService.entity.TCinema;
import com.lhl.cinemaService.mapper.MovieCinemaMapper;
import com.lhl.cinemaService.service.MovieCinemaService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * <p>
 * 电影院与电影多对多关系表; 服务实现类
 * </p>
 *
 * @author lhl
 * @since 2022-08-04
 */
@Service
public class MovieCinemaServiceImpl extends ServiceImpl<MovieCinemaMapper, MovieCinema> implements MovieCinemaService {

    @Override
    public List<TCinema> getcinemaById(String id) {
        return baseMapper.getcinemaById(id);
    }


}
