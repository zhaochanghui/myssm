package myssm.demo.mapper;

import myssm.demo.model.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface UserMapper {

    @Select("select * from user where id = #{id}")
    User findById(@Param("id") int id);

    @Insert({ "insert into user(nickname, pwd,addtime) values(#{nickname}, #{pwd},#{addtime})" })
    int addUser(@Param("nickname") String nickname, @Param("pwd") String pwd, @Param("addtime") String addtime);

    @Select("select * from user where nickname = #{nickname}")
    User findByNickname(@Param("nickname") String nickname);

    @Select("select * from user where nickname = #{nickname} and pwd=#{pwd}")
    User findUser(@Param("nickname") String nickname,@Param("pwd") String pwd);

}
