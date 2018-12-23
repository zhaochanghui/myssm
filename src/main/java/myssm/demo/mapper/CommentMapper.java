package myssm.demo.mapper;

import myssm.demo.model.Comment;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CommentMapper
{

    /**
     *
     *
     * @Title: insertSysRole
     *
     * @Description: insertSysRole 不需要返回主键的情况
     *
     * @param
     * @return
     *
     * @return: int
     */
    @Insert({ "insert into t_comment(ip, nickname, content,nid,addtime) values(#{ip}, #{nickname}, #{content},#{nid},#{addtime})" })
    int insertComment(@Param("ip") String ip,@Param("nickname") String nickname,@Param("content") String content,@Param("nid") int nid,@Param("addtime") String addtime);

    @Select("select * from t_comment where nid=#{nid}")
    List<Comment> comments(@Param("nid") int nid);

}