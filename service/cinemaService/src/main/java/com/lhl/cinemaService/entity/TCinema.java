package com.lhl.cinemaService.entity;

import java.math.BigDecimal;
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
 * 电影院详细信息
 * </p>
 *
 * @author lhl
 * @since 2022-08-04
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="TCinema对象", description="电影院详细信息")
public class TCinema implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "电影院主键ID")
    @TableId(value = "c_id", type = IdType.ID_WORKER_STR)
    private String cId;

    @ApiModelProperty(value = "电影院名称")
    private String cTitle;

    @ApiModelProperty(value = "电影院地址")
    private String cAddress;

    @ApiModelProperty(value = "电影院标签")
    private String cLabel;

    @ApiModelProperty(value = "电影院旧价格")
    private BigDecimal cOldprice;

    @ApiModelProperty(value = "电影院新人价格")
    private BigDecimal cNewprice;

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
