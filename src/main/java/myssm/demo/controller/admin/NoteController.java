package myssm.demo.controller.admin;


import com.sun.org.apache.regexp.internal.RE;
import myssm.demo.model.Note;
import myssm.demo.service.NoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import myssm.demo.service.Tools;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class NoteController {

    @Autowired
    NoteService noteService;

    @RequestMapping(value="/myadmin/index",method = RequestMethod.GET)
    public String index(HttpServletRequest request)
    {
        HttpSession session = request.getSession();
        if(null == session.getAttribute("user")){
            System.out.println("go login");
            return "redirect:/myadmin/login";
        }

        return "myadmin/index";
    }


    /**
     * 文章管理
     * @return
     */
    @RequestMapping(value="/myadmin/list",method = RequestMethod.GET)
    public String list(HttpServletRequest request, Model model)
    {
        HttpSession session = request.getSession();
        if(null == session.getAttribute("user")){
            System.out.println("go login");
            return "redirect:/myadmin/login";
        }

        double total = (double) noteService.getCount();
        double pageSize = 15;
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
        // User user = userService.findById(1);
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

        return "myadmin/list";
    }


    @RequestMapping(value="/myadmin/add",method = RequestMethod.GET)
    public String insert(HttpServletRequest request)
    {
        HttpSession session = request.getSession();
        if(null == session.getAttribute("user")){
            System.out.println("go login");
            return "redirect:/myadmin/login";
        }

        return "myadmin/add";
    }



    @RequestMapping(value="/myadmin/_add",method = RequestMethod.POST)
    public String _add(HttpServletRequest request)
    {

        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String brief = request.getParameter("brief");
        String stype = request.getParameter("stype");
        String create_time = Tools.gettime();
        System.out.println(content);

        int res = noteService.addpost(title,stype,brief,content,create_time);
        return "redirect:/myadmin/list";
    }


    @RequestMapping(value="/myadmin/update",method = RequestMethod.GET)
    public String update(HttpServletRequest request,Model model)
    {
        HttpSession session = request.getSession();
        if(null == session.getAttribute("user")){
            System.out.println("go login");
            return "redirect:/myadmin/login";
        }

        String id = request.getParameter("id");
        Note note = noteService.findById(Integer.parseInt(id));

        model.addAttribute("post",note);
        return "/myadmin/update";
    }



    @RequestMapping(value="/myadmin/_update",method = RequestMethod.POST)
    public String _update(HttpServletRequest request)
    {

        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String brief = request.getParameter("brief");
        String stype = request.getParameter("stype");
        String create_time = Tools.gettime();
        System.out.println(stype);
        System.out.println(content);

        int res = noteService.updateById(title,stype,brief,content,create_time,Integer.parseInt(id));

        return "redirect:/myadmin/list";
    }


    @RequestMapping(value="/myadmin/login",method = RequestMethod.GET)
    public String login(HttpServletRequest request)
    {
        return "myadmin/login";
    }

    @RequestMapping(value= "/myadmin/_login", method = RequestMethod.POST)
    public String  _login(HttpServletRequest request){

        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username+"    "+password);
        if("root".equals(username) && "615331".equals(password)){
            session.setAttribute("user",username);
            System.out.println("sesion设置");
            return "redirect:/myadmin/list";
        }

        return "redirect:/myadmin/login";
    }


    /*
    删除
     */
    @RequestMapping(value="/myadmin/del",method = RequestMethod.GET)
    public String delNote(HttpServletRequest request)
    {
        HttpSession session = request.getSession();
        if(null == session.getAttribute("user")){
            System.out.println("go login");
            return "redirect:/myadmin/login";
        }

        int id = Integer.parseInt(request.getParameter("id"));
        noteService.delNote(id);

        return "redirect:/myadmin/list";
    }
}
