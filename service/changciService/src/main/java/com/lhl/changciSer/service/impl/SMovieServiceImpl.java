package com.lhl.changciSer.service.impl;

import com.lhl.changciSer.entity.ChangCIInfo;
import com.lhl.changciSer.entity.SMovie;
import com.lhl.changciSer.mapper.SMovieMapper;
import com.lhl.changciSer.service.Feign.MovieDataSer;
import com.lhl.changciSer.service.SMovieService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lhl.entity.MovieData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 场次表; 服务实现类
 * </p>
 *
 * @author lhl
 * @since 2022-08-05
 */
@Service
public class SMovieServiceImpl extends ServiceImpl<SMovieMapper, SMovie> implements SMovieService {
    @Autowired
    MovieDataSer movieDataSer;
    @Override
    public List<SMovie> getALlChangCiByCinIdAndMid(String cid, String tid) {
        return baseMapper.getALlChangCiByCinIdAndMid(cid,tid);
    }

    @Override
    public List<ChangCIInfo> getChangCiAll(String cid) {
        List<ChangCIInfo> resData= new ArrayList<>();
        List<MovieData> changciData = movieDataSer.getChangciData(cid);
        for (MovieData changciDatum : changciData) {
            ChangCIInfo changCIInfo = new ChangCIInfo();
            List<SMovie> aLlChangCiByCinIdAndMid = getALlChangCiByCinIdAndMid(cid, changciDatum.getTId());
            changCIInfo.setMovieData(changciDatum);
            changCIInfo.setChangcis(aLlChangCiByCinIdAndMid);
            resData.add(changCIInfo);
        }
        return resData;
    }
}
