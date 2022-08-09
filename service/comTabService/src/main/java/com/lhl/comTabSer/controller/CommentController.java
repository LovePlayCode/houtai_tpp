package com.lhl.comTabSer.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.lhl.comTabSer.entity.Comment;
import com.lhl.comTabSer.entity.MovieCommenttype;
import com.lhl.comTabSer.service.CommentService;
import com.lhl.comTabSer.service.MovieCommenttypeService;
import com.lhl.entity.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 评价表; 前端控制器
 * </p>
 *
 * @author lhl
 * @since 2022-08-08
 */
@RestController
@RequestMapping("/comTabSer/comment")
public class CommentController {
    @Autowired
    CommentService commentService;
    @Autowired
    MovieCommenttypeService movieCommenttypeService;
    // 根据电影id获取评论数据和tab数据
    @GetMapping("getCommentById")
    public R getCommentById(@RequestParam("tid")String id){
        QueryWrapper<Comment> commentQueryWrapper = new QueryWrapper<>();
        QueryWrapper<MovieCommenttype> movieCommenttypeQueryWrapper = new QueryWrapper<>();
        movieCommenttypeQueryWrapper.eq("t_id",id);

        commentQueryWrapper.eq("t_id",id);

        return R.ok().data("coms",commentService.list(commentQueryWrapper)).data("tabs",movieCommenttypeService.list(movieCommenttypeQueryWrapper));
    }

}

