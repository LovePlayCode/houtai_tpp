package com.lhl.actSer.service;

import com.lhl.actSer.entity.TDirectors;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 * 演职人员; 服务类
 * </p>
 *
 * @author lhl
 * @since 2022-08-03
 */
public interface TDirectorsService extends IService<TDirectors> {
    public List<TDirectors> getActsByMid(String id);

}
