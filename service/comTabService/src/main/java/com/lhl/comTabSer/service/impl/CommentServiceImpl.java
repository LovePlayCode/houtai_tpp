package com.lhl.comTabSer.service.impl;

import com.lhl.comTabSer.entity.Comment;
import com.lhl.comTabSer.mapper.CommentMapper;
import com.lhl.comTabSer.service.CommentService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 评价表; 服务实现类
 * </p>
 *
 * @author lhl
 * @since 2022-08-08
 */
@Service
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements CommentService {

}
