package com.lhl.moviedataser.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * ;
 * </p>
 *
 * @author lhl
 * @since 2022-08-03
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="MovieDetail对象", description=";")
public class MovieDetail implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键")
    @TableId(value = "d_id", type = IdType.ID_WORKER_STR)
    private String dId;

    @ApiModelProperty(value = "电影名称")
    @TableField("showName")
    private String showName;

    @ApiModelProperty(value = "电影演出时间")
    private String duration;

    @ApiModelProperty(value = "电影类型")
    private String type;

    @ApiModelProperty(value = "电影详情介绍")
    private String description;

    @ApiModelProperty(value = "上映时间")
    @TableField("openTime")
    private String openTime;

    @ApiModelProperty(value = "想看人数")
    @TableField("wantCount")
    private String wantCount;

    @ApiModelProperty(value = "观影贴士")
    @TableField("easterEggsInfo")
    private String easterEggsInfo;

    @ApiModelProperty(value = "乐观锁")
    @TableField("REVISION")
    private String revision;

    @ApiModelProperty(value = "创建时间")
    @TableField("CREATED_TIME")
    private Date createdTime;

    @ApiModelProperty(value = "更新时间")
    @TableField("UPDATED_TIME")
    private Date updatedTime;


}
