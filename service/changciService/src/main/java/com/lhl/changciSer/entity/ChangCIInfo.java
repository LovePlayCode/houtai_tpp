package com.lhl.changciSer.entity;

import com.lhl.entity.MovieData;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

@Data
public class ChangCIInfo {
    MovieData movieData;
    List<SMovie> changcis;
}
