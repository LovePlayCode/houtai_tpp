package com.lhl.changciSer.mapper;

import com.lhl.changciSer.entity.ChangCIInfo;
import com.lhl.changciSer.entity.SMovie;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 * 场次表; Mapper 接口
 * </p>
 *
 * @author lhl
 * @since 2022-08-05
 */
public interface SMovieMapper extends BaseMapper<SMovie> {
    public List<SMovie> getALlChangCiByCinIdAndMid(String cid,String tid);
}
