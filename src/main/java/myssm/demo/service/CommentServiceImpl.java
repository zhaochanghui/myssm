package myssm.demo.service;

import myssm.demo.mapper.CommentMapper;
import myssm.demo.model.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService
{
    @Autowired
    CommentMapper commentMapper;

    @Override
    public int insertComment(String ip,String nickname,String content,int nid,String addtime){
        return commentMapper.insertComment(ip,nickname,content,nid,addtime);
    }


    @Override
    public List<Comment>  comments(int nid){
        return commentMapper.comments(nid);
    }

}