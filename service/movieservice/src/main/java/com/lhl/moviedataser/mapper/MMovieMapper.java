package com.lhl.moviedataser.mapper;

import com.lhl.moviedataser.entity.MMovie;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 * 电影首页表 Mapper 接口
 * </p>
 *
 * @author lhl
 * @since 2022-08-01
 */
public interface MMovieMapper extends BaseMapper<MMovie> {
    public List<MMovie>getMovieByTid(String cid);
}
