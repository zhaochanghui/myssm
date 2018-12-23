package myssm.demo.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface VisitMapper{

    @Insert({ "insert into t_view(ip, info,addtime) values(#{ip}, #{info},#{addtime})" })
    int insertVisit(@Param("ip") String ip, @Param("info") String info, @Param("addtime") String addtime);
}