package com.lhl.actSer.mapper;

import com.lhl.actSer.entity.TDirectors;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 * 演职人员; Mapper 接口
 * </p>
 *
 * @author lhl
 * @since 2022-08-03
 */
public interface TDirectorsMapper extends BaseMapper<TDirectors> {
    // 获取演职员信息
    public List<TDirectors> getActsByMid(String id);
}
