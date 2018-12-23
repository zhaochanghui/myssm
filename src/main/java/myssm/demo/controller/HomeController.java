package myssm.demo.controller;


import myssm.demo.model.Note;
import myssm.demo.service.NoteService;
import myssm.demo.service.VisitService;
import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import myssm.demo.service.UserService;
import myssm.demo.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Calendar;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Controller
public class HomeController {

    @Autowired
    private UserService userService;

    @Autowired
    private NoteService noteService;

    @Autowired
    VisitService visitService;

//    @ResponseBody
    @RequestMapping(value="/",method= RequestMethod.GET)
    public String index(HttpServletRequest request, Model model)
    {
        double total = (double) noteService.getCount();
        double pageSize = 10;
        int start = 0;

        int pages = 0;

        if(total==0){
            pages=0;
        }else{
            pages= (int)Math.ceil(total/pageSize);
        }

        int page = 1;
        if(request.getParameter("page")!=null){
            System.out.println("total::"+total+"Now: "+request.getParameter("page"));
            page =  Integer.parseInt(request.getParameter("page"));
            start = (page-1)*(int)pageSize;

        }
        User user = userService.findById(1);
        List<Note> notes = noteService.findByPage(start,(int)pageSize);
//        for(Note note: notes){
//            System.out.println(note.getId()+"   "+note.getTitle());
//        }

        //推荐
        List<Note> groom = noteService.groom();


        boolean prev = false;
        boolean next = false;

        if(page<=pages&&page>1){
            prev=true;
        }

        if(page<pages && page>0){
            next=true;
        }


        model.addAttribute("page",page);
        model.addAttribute("pages",pages);
        model.addAttribute("prev",prev);
        model.addAttribute("next",next);


        model.addAttribute("notes",notes);
        model.addAttribute("groom",groom);

        HttpSession session = request.getSession();
        if(null == session.getAttribute("user")){
            visitService.insertVisit(getClientIP(request),"首页",gettime());
        }

        String nickname = "";
        int userid = -1;
        //判断登录状况
        if(null!=session.getAttribute("nickname")){
            nickname = (String)session.getAttribute("nickname");
            userid =  (int) session.getAttribute("userid");
        }

        model.addAttribute("nickname",nickname);
        model.addAttribute("userid",userid);


        return "home/index";
    }

    /**
     * 详情
     * @return
     */
//    @ResponseBody
    @RequestMapping(value="/detail",method=RequestMethod.GET)
    public String detail(HttpServletRequest request,Model model)
    {
        int id = Integer.parseInt(request.getParameter("id"));
        Note note = noteService.findById(id);

        List<Note> groom = noteService.groom();

        model.addAttribute("groom",groom);
        model.addAttribute("note",note);

        //上一篇，下一篇
        Note notePrev = noteService.findById(id-1);
        Note noteNext = noteService.findById(id+1);

        int prevId=-1;
        String prevTitle = "";
        int nextId=-1;
        String nextTitle = "";

        if(notePrev!=null){
            prevId = notePrev.getId();
            prevTitle = notePrev.getTitle();
        }
        if(noteNext!=null){
            nextId = noteNext.getId();
            nextTitle = noteNext.getTitle();
        }

        model.addAttribute("prevId",prevId);
        model.addAttribute("nextId",nextId);
        model.addAttribute("prevTitle",prevTitle);
        model.addAttribute("nextTitle",nextTitle);


        HttpSession session = request.getSession();
        if(null == session.getAttribute("user")){
            visitService.insertVisit(getClientIP(request),"文章:"+id,gettime());
        }

        String nickname = "";
        int userid = -1;
        //判断登录状况
        if(null!=session.getAttribute("nickname")){
            nickname = (String)session.getAttribute("nickname");
            userid =  (int) session.getAttribute("userid");
        }

        model.addAttribute("nickname",nickname);
        model.addAttribute("userid",userid);

        System.out.println(nickname);
        System.out.println(userid);

        return "home/article_detail";
    }


//    @ResponseBody
    @RequestMapping(value="/sort",method= RequestMethod.GET)
    public String sort(HttpServletRequest request, Model model)
    {
        String sort = request.getParameter("sort");

        double total = (double) noteService.getSortCount(sort);
        double pageSize = 10;
        int start = 0;

        int pages = 0;

        if(total==0){
            pages=0;
        }else{
            pages= (int)Math.ceil(total/pageSize);
        }

        int page = 1;
        if(request.getParameter("page")!=null){
            System.out.println("total::"+total+"Now: "+request.getParameter("page"));
            page =  Integer.parseInt(request.getParameter("page"));
            start = (page-1)*(int)pageSize;

        }
        User user = userService.findById(1);
        List<Note> notes = noteService.findSortByPage(sort,start,(int)pageSize);
//        for(Note note: notes){
//            System.out.println(note.getId()+"   "+note.getTitle());
//        }

        List<Note> groom = noteService.groom();

        boolean prev = false;
        boolean next = false;

        if(page<=pages&&page>1){
            prev=true;
        }

        if(page<pages && page>0){
            next=true;
        }


        model.addAttribute("page",page);
        model.addAttribute("pages",pages);
        model.addAttribute("prev",prev);
        model.addAttribute("next",next);
        model.addAttribute("sort",sort);

        model.addAttribute("notes",notes);
        model.addAttribute("groom",groom);

        HttpSession session = request.getSession();
        if(null == session.getAttribute("user")){
            visitService.insertVisit(getClientIP(request),"分类:"+sort,gettime());
        }

        String nickname = "";
        int userid = -1;
        //判断登录状况
        if(null!=session.getAttribute("nickname")){
            nickname = (String)session.getAttribute("nickname");
            userid =  (int) session.getAttribute("userid");
        }

        model.addAttribute("nickname",nickname);
        model.addAttribute("userid",userid);

        System.out.println(nickname);
        System.out.println(userid);

        return "home/sort";
    }


//    @ResponseBody
    @RequestMapping(value="/hunt",method= RequestMethod.GET)
    public String hunt(HttpServletRequest request, Model model)
    {
        String kw = request.getParameter("kw");

        double total = (double) noteService.huntCount(kw);
        double pageSize = 10;
        int start = 0;

        int pages = 0;

        if(total==0){
            pages=0;
        }else{
            pages= (int)Math.ceil(total/pageSize);
        }

        int page = 1;
        if(request.getParameter("page")!=null){
            System.out.println("total::"+total+"Now: "+request.getParameter("page"));
            page =  Integer.parseInt(request.getParameter("page"));
            start = (page-1)*(int)pageSize;

        }
        User user = userService.findById(1);
        List<Note> notes = noteService.hunt(kw,start,(int)pageSize);
//        for(Note note: notes){
//            System.out.println(note.getId()+"   "+note.getTitle());
//        }

        List<Note> groom = noteService.groom();

        boolean prev = false;
        boolean next = false;

        if(page<=pages&&page>1){
            prev=true;
        }

        if(page<pages && page>0){
            next=true;
        }


        model.addAttribute("page",page);
        model.addAttribute("pages",pages);
        model.addAttribute("prev",prev);
        model.addAttribute("next",next);
        model.addAttribute("kw",kw);

        model.addAttribute("notes",notes);
        model.addAttribute("groom",groom);

        HttpSession session = request.getSession();
        if(null == session.getAttribute("user")){
            visitService.insertVisit(getClientIP(request),"搜索:"+kw,gettime());
        }

        String nickname = "";
        int userid = -1;
        //判断登录状况
        if(null!=session.getAttribute("nickname")){
            nickname = (String)session.getAttribute("nickname");
            userid =  (int) session.getAttribute("userid");
        }

        model.addAttribute("nickname",nickname);
        model.addAttribute("userid",userid);

        System.out.println(nickname);
        System.out.println(userid);

        return "home/hunt";
    }


    /**
     * ajax详情
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/note",method=RequestMethod.GET)
    public String note(HttpServletRequest request,Model model)
    {
        int id = Integer.parseInt(request.getParameter("id"));
        Note note = noteService.findById(id);

        List<Note> groom = noteService.groom();
        JSONObject obj = new JSONObject(note);
        //System.out.println(obj.toString());

        return obj.toString();
    }


    @ResponseBody
    @RequestMapping(value = "/a",method = RequestMethod.GET)
    public String all(HttpServletRequest request)
    {
        List<Note> list = noteService.findLists();
        System.out.println(list.size());

        HttpSession session = request.getSession();
        String nickname = (String) session.getAttribute("nickname");
        int userid = (int)session.getAttribute("userid");
        return nickname+"  "+userid;
    }

    @ResponseBody
    @RequestMapping(value="/t",method=RequestMethod.GET)
    public String getT()
    {
        byte[] key = new byte[32];
        Note note = noteService.findById(5);
        System.out.println(note.getBrief());
        return "abc";
    }



    public static String getClientIP(HttpServletRequest request) {
        String ip = request.getHeader("X-Forwarded-For");
        if (StringUtils.isNotEmpty(ip) && !"unKnown".equalsIgnoreCase(ip)) {
            // 多次反向代理后会有多个ip值，第一个ip才是真实ip
            int index = ip.indexOf(",");
            if (index != -1) {
                return ip.substring(0, index);
            } else {
                return ip;
            }
        }
        ip = request.getHeader("X-Real-IP");
        if (StringUtils.isNotEmpty(ip) && !"unKnown".equalsIgnoreCase(ip)) {
            return ip;
        }
        return request.getRemoteAddr();
    }

    public static String gettime()
    {
        Calendar cal=Calendar.getInstance();
        int y=cal.get(Calendar.YEAR);
        int m=cal.get(Calendar.MONTH);
        int d=cal.get(Calendar.DATE);
        int h=cal.get(Calendar.HOUR_OF_DAY);
        int mi=cal.get(Calendar.MINUTE);
        int s=cal.get(Calendar.SECOND);

        if(m<12){
            m=m+1;
        }else{
            m=1;
        }

        String ymd = y+"年"+m+"月"+d+"日"+h+"时"+mi+"分"+s+"秒";
        return ymd;
    }
}
