package myssm.demo.service;

import myssm.demo.model.Comment;

import java.util.List;

public interface CommentService
{
    int insertComment(String ip,String nickname,String content,int nid,String addtime);
    List<Comment> comments(int nid);
}