package myssm.demo.service;

import myssm.demo.mapper.VisitMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VisitServiceImpl implements VisitService
{

    @Autowired
    VisitMapper visitMapper;


    @Override
    public int insertVisit(String ip,String info,String addtime){
        //return 1;
        return visitMapper.insertVisit(ip,info,addtime);
    }
}