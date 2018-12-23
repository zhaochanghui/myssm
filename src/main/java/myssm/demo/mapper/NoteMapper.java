package myssm.demo.mapper;

import myssm.demo.model.Note;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface NoteMapper{
    @Select("select * from t_note where id= #{id}")
    Note findById(@Param("id") int id);

    @Select("select * from t_note limit 0,10")
    List<Note> findLists();

    @Select("select * from t_note order by id desc limit #{start},#{limit}")
    List<Note> findByPage(@Param("start") int start,@Param("limit") int limit);

    @Select("select count(id) from t_note")
    int getCount();

    @Select("select * from t_note where stype=#{stype} order by id desc limit #{start},#{limit}")
    List<Note> findSortByPage(@Param("stype") String stype,@Param("start") int start,@Param("limit") int limit);

    @Select("select count(id) from t_note where stype=#{stype}")
    int getSortCount(@Param("stype") String stype);

    //推荐
    @Select("select * from t_note  group by stype order by id desc")
    List<Note> groom();

    //模糊查询
    @Select("SELECT  * FROM t_note WHERE title LIKE CONCAT('%',#{title},'%') limit #{start},#{limit} ")
     List<Note> hunt(@Param("title") String title,@Param("start") int start,@Param("limit") int limit);

    //模糊查询
    @Select("SELECT  count(id) FROM t_note WHERE title LIKE CONCAT('%',#{title},'%')  ")
    int huntCount(@Param("title") String title);


    @Insert({ "insert into t_note(title, stype,brief,content,create_time) values(#{title}, #{stype},#{brief},#{content},#{create_time})" })
    int addpost(@Param("title") String title, @Param("stype") String stype, @Param("brief") String brief,@Param("content") String content,@Param("create_time") String create_time);


    @Update({ "update t_note set title=#{title}, stype=#{stype},brief=#{brief},content=#{content},create_time=#{create_time} where id = #{id}" })
    int updateById(@Param("title") String title, @Param("stype") String stype, @Param("brief") String brief,@Param("content") String content,@Param("create_time") String create_time,@Param("id") int id);

    @Delete("delete from t_note where id = #{id}")
    int delNote(@Param("id") int id);
}