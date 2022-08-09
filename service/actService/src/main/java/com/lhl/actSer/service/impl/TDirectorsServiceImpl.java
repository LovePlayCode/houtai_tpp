package com.lhl.actSer.service.impl;

import com.lhl.actSer.entity.TDirectors;
import com.lhl.actSer.mapper.TDirectorsMapper;
import com.lhl.actSer.service.TDirectorsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 演职人员; 服务实现类
 * </p>
 *
 * @author lhl
 * @since 2022-08-03
 */
@Service
public class TDirectorsServiceImpl extends ServiceImpl<TDirectorsMapper, TDirectors> implements TDirectorsService {

    @Override
    public List<TDirectors> getActsByMid(String id) {
        List<TDirectors> actsList = baseMapper.getActsByMid(id);
        return actsList;
    }
}
