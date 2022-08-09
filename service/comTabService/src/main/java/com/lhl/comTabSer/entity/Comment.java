package com.lhl.comTabSer.entity;

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
 * 评价表;
 * </p>
 *
 * @author lhl
 * @since 2022-08-08
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="Comment对象", description="评价表;")
public class Comment implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "c_id", type = IdType.ID_WORKER_STR)
    private String cId;

    private String tId;

    @ApiModelProperty(value = "用户名称")
    private String uTitle;

    @ApiModelProperty(value = "用户头像")
    private String uImage;

    @ApiModelProperty(value = "获得点赞")
    private String uPraise;

    @ApiModelProperty(value = "评价时间")
    private String comDate;

    @ApiModelProperty(value = "用户评价")
    private String uStar;

    @ApiModelProperty(value = "评价内容")
    private String comment;

    @ApiModelProperty(value = "属于哪个热评标签")
    private String mcId;

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
