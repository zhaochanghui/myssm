package myssm.demo.controller;


import myssm.demo.model.Comment;
import myssm.demo.model.Note;
import myssm.demo.model.User;
import myssm.demo.service.CommentService;
import myssm.demo.service.NoteService;
import myssm.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.google.gson.reflect.TypeToken;

import java.util.Calendar;


@Controller
public class UserController {

    @Autowired
    CommentService commentService;

    @Autowired
    UserService userService;

//    @ResponseBody
    @RequestMapping(value="/about",method=RequestMethod.GET)
    public String about(HttpServletRequest request,Model model)
    {

        HttpSession session= request.getSession();
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

        return "home/about";
    }


    @RequestMapping(value="/mood",method=RequestMethod.GET)
    public String mood(HttpServletRequest request,Model model)
    {
        HttpSession session= request.getSession();
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
        return "home/mood";
    }

    @ResponseBody
    @RequestMapping(value="/addcomment",method = RequestMethod.POST)
    public String insertComment(HttpServletRequest request)
    {
        String nickname = request.getParameter("nickname");
        String content = request.getParameter("content");
        String ip = getClientIP(request);
        String nidstr = request.getParameter("nid");
        int nid = Integer.parseInt(nidstr);

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
        System.out.println("现在时刻是"+y+"年"+m+"月"+d+"日"+h+"时"+mi+"分"+s+"秒");

        int res = commentService.insertComment(ip,nickname,content,nid,ymd);

        return nickname+"   ----"+content+"  ip:"+ip+" success:"+res;
    }

    @ResponseBody
    @RequestMapping(value="/getcomments",method = RequestMethod.GET)
    public String getComments(HttpServletRequest request)
    {
        String nidstr = request.getParameter("nid");
        int nid = Integer.parseInt(nidstr);

        List<Comment> comments = commentService.comments(nid);
        System.out.println(comments.size());
        Gson gson = new Gson();
        String str = gson.toJson(comments);

        Calendar cal=Calendar.getInstance();
        int y=cal.get(Calendar.YEAR);
        int m=cal.get(Calendar.MONTH);
        int d=cal.get(Calendar.DATE);
        int h=cal.get(Calendar.HOUR_OF_DAY);
        int mi=cal.get(Calendar.MINUTE);
        int s=cal.get(Calendar.SECOND);
        System.out.println("现在时刻是"+y+"年"+m+"月"+d+"日"+h+"时"+mi+"分"+s+"秒");

        return str;
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


    //------>前台用户
    @RequestMapping(value="/home/reg",method=RequestMethod.GET)
    public String reg()
    {
        return "home/user/reg";
    }

    @ResponseBody
    @RequestMapping(value="/home/_reg",method=RequestMethod.POST)
    public String _reg(HttpServletRequest request)
    {
        String nickname = request.getParameter("nickname");
        String pwd = request.getParameter("pwd");
        int i = userService.addUser(nickname,pwd,gettime());

        HttpSession session = request.getSession();

        User user = userService.findByNickname(nickname);
        session.setAttribute("nickname",nickname);
        session.setAttribute("userid",user.getId());

        System.out.println("sesion设置");

        return "nickname:"+nickname+"  pwd:"+pwd;
    }


    @ResponseBody
    @RequestMapping(value = "/home/checknickname",method = RequestMethod.POST)
    public String checknickname(HttpServletRequest request){
        String nickname = request.getParameter("nickname");
        User user= userService.findByNickname(nickname);

        if(null==user){
            return "can";
        }else{
            return "has";
        }

    }



    @RequestMapping(value="/home/login",method=RequestMethod.GET)
    public String login()
    {
        return "home/user/login";
    }

    @ResponseBody
    @RequestMapping(value="/home/_login",method=RequestMethod.POST)
    public String _login(HttpServletRequest request)
    {
        String nickname = request.getParameter("nickname");
        String pwd = request.getParameter("pwd");
        User user = userService.findUser(nickname,pwd);

        if(null==user){
            return "error";
        }else if(user.getNickname().equals(nickname) && user.getPwd().equals(pwd)){
            HttpSession session = request.getSession();
            session.setAttribute("nickname",nickname);
            session.setAttribute("userid",user.getId());
            return "ok";
        }else{
            return "error";
        }

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
