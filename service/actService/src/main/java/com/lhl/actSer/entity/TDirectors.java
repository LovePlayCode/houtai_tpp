package com.lhl.actSer.entity;

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
 * 演职人员;
 * </p>
 *
 * @author lhl
 * @since 2022-08-03
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="TDirectors对象", description="演职人员;")
public class TDirectors implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键")
    @TableId(value = "d_id", type = IdType.ID_WORKER_STR)
    private String dId;

    @ApiModelProperty(value = "导演名称")
    private String dTitle;

    @ApiModelProperty(value = "导演英文名称")
    private String dEnglishname;

    @ApiModelProperty(value = "导演身高")
    private String dHeight;

    @ApiModelProperty(value = "导演籍贯")
    private String dNativeplace;

    @ApiModelProperty(value = "导演头衔")
    private String dTouxie;

    @ApiModelProperty(value = "导演简介")
    private String dDetail;

    @ApiModelProperty(value = "导演图片地址")
    private String dImage;

    @ApiModelProperty(value = "区分是演员还是导演(1是演员 0是导演)")
    private Integer dType;

    @TableField("roleName")
    private String roleName;

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
