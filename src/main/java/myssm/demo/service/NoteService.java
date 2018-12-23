package myssm.demo.service;

import myssm.demo.model.Note;

import java.util.List;

public interface NoteService{
    Note findById(int id);
    List<Note> findLists();
    List<Note> findByPage(int start,int limit);
    int getCount();

    List<Note> findSortByPage(String stype,int start,int limit);

    int getSortCount(String stype);

    List<Note> groom();


    List<Note> hunt(String title,int start,int limit);

    int huntCount(String title);

    int addpost(String title,  String stype, String brief,String content,String create_time);

    int updateById(String title,  String stype, String brief,String content,String create_time, int id);

    int delNote(int id);
}

