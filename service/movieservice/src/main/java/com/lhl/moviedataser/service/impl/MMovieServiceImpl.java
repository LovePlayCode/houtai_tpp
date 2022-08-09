package com.lhl.moviedataser.service.impl;

import com.lhl.entity.MovieData;
import com.lhl.moviedataser.entity.MMovie;
import com.lhl.moviedataser.mapper.MMovieMapper;
import com.lhl.moviedataser.service.MMovieService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 电影首页表 服务实现类
 * </p>
 *
 * @author lhl
 * @since 2022-08-01
 */
@Service
public class MMovieServiceImpl extends ServiceImpl<MMovieMapper, MMovie> implements MMovieService {

    @Override
    public List<MovieData> getMovieByTid(String cid) {
        List<MovieData>resData = new ArrayList<>();
        List<MMovie> movieBys = baseMapper.getMovieByTid(cid);
        for (MMovie movieBy : movieBys) {
            MovieData movieData = new MovieData();
            BeanUtils.copyProperties(movieBy,movieData);
            resData.add(movieData);
        }
        // 遍历
        return resData;
    }
}
