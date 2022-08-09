package com.lhl.changciSer.service;

import com.lhl.changciSer.entity.ChangCIInfo;
import com.lhl.changciSer.entity.SMovie;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 * 场次表; 服务类
 * </p>
 *
 * @author lhl
 * @since 2022-08-05
 */
public interface SMovieService extends IService<SMovie> {
    // 根据电影id以及电影院id获取场次信息
    public List<SMovie> getALlChangCiByCinIdAndMid(String cid, String tid);
    public List<ChangCIInfo> getChangCiAll(String cid);
}
