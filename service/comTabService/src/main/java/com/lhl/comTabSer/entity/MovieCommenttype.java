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
 * 电影热评标签;
 * </p>
 *
 * @author lhl
 * @since 2022-08-08
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="MovieCommenttype对象", description="电影热评标签;")
public class MovieCommenttype implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "电影热评标签")
    @TableId(value = "mc_id", type = IdType.ID_WORKER_STR)
    private String mcId;

    @ApiModelProperty(value = "电影id")
    private String tId;

    @ApiModelProperty(value = "热评名称")
    private String mcTitle;

    @TableField("countSum")
    private String countSum;

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
