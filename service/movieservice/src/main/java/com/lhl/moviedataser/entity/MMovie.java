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
 * 电影首页表
 * </p>
 *
 * @author lhl
 * @since 2022-08-01
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="MMovie对象", description="电影首页表")
public class MMovie implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "电影详情主键")
    @TableId(value = "t_id", type = IdType.ID_WORKER_STR)
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

    @ApiModelProperty(value = "上映时间")
    @TableField("openTime")
    private String openTime;

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
