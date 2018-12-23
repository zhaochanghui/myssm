package myssm.demo.service;

import myssm.demo.mapper.NoteMapper;
import myssm.demo.model.Note;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoteServiceImpl implements NoteService{

    @Autowired
    private NoteMapper noteMapper;

    @Override
    public Note findById(int id){
        return noteMapper.findById(id);
    }

    @Override
    public List<Note> findLists(){
        return noteMapper.findLists();
    }

    @Override
    public List<Note> findByPage(int start,int limit){
        return noteMapper.findByPage(start,limit);
    }

    @Override
    public int getCount(){
        return noteMapper.getCount();
    }

    @Override
    public List<Note> findSortByPage(String stype,int start,int limit){
        return noteMapper.findSortByPage(stype,start,limit);
    }

    @Override
    public int getSortCount(String stype){
        return noteMapper.getSortCount(stype);
    }

    @Override
    public  List<Note> groom(){
        return noteMapper.groom();
    }

    @Override
    public List<Note> hunt(String title,int start,int limit){
        return noteMapper.hunt(title,start,limit);
    }


    @Override
    public int huntCount(String title){
        return noteMapper.huntCount(title);
    }

    @Override
    public int addpost(String title,  String stype, String brief,String content,String create_time){
        return noteMapper.addpost(title,stype,brief,content,create_time);
    }

    @Override
    public int updateById(String title,  String stype, String brief,String content,String create_time, int id){
        return noteMapper.updateById(title,stype,brief,content,create_time,id);
    }

    @Override
    public  int delNote(int id){
        return noteMapper.delNote(id);
    }
}