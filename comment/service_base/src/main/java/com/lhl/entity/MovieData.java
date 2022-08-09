package com.lhl.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
public class MovieData {
    private String tId;
    @ApiModelProperty(value = "电影名称")
    private String tTitle;

    @ApiModelProperty(value = "电影评分")
    private String tScore;

    @ApiModelProperty(value = "评价人数")
    private String tPersons;

    @ApiModelProperty(value = "导演")
    private String tDirector;

    @ApiModelProperty(value = "演员")
    private String tActors;

    @ApiModelProperty(value = "电影图片链接或地址")
    private String tImage;

    @ApiModelProperty(value = "电影类型")
    private String tType;
}
