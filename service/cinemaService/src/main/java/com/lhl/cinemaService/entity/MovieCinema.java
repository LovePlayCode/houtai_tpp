package com.lhl.cinemaService.entity;

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
 * 电影院与电影多对多关系表;
 * </p>
 *
 * @author lhl
 * @since 2022-08-04
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="MovieCinema对象", description="电影院与电影多对多关系表;")
public class MovieCinema implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "关系主键id")
    @TableId(value = "mn_id", type = IdType.ID_WORKER_STR)
    private String mnId;

    @ApiModelProperty(value = "电影院主键")
    private String cId;

    @ApiModelProperty(value = "电影主键")
    private String tId;

    private String sId;

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
