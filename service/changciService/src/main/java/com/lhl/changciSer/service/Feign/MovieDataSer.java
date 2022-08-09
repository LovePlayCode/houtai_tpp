package com.lhl.changciSer.service.Feign;

import com.lhl.entity.MovieData;
import com.lhl.entity.R;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Component
@FeignClient("service-mov")
public interface MovieDataSer {
    @GetMapping("/service-mov/m-movie/getChangciData/{cid}")
    public List<MovieData> getChangciData(@PathVariable("cid") String cid);
}
