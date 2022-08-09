package com.lhl.changciSer.entity;

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
 * 场次表;
 * </p>
 *
 * @author lhl
 * @since 2022-08-05
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="SMovie对象", description="场次表;")
public class SMovie implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "场次主键")
    @TableId(value = "s_id", type = IdType.ID_WORKER_STR)
    private String sId;

    @ApiModelProperty(value = "场次日期")
    private String sDate;

    @ApiModelProperty(value = "电影开始时间")
    private String sStartdate;

    @ApiModelProperty(value = "电影结束时间")
    private String sEndstart;

    @ApiModelProperty(value = "电影类型(2D或者3D)")
    private String type;

    @ApiModelProperty(value = "电影院厅位")
    private String sHall;

    @ApiModelProperty(value = "价格")
    private BigDecimal price;

    @ApiModelProperty(value = "时间戳 用于进行数据排序")
    private Date orderDate;

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
