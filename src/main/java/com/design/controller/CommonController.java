package com.design.controller;

import com.design.common.MySessionContext;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/kickout")
public class CommonController {
//    private MySessionContext myc = MySessionContext.getInstance();

    @RequestMapping(value = "")
    @ResponseBody
    public String kickout(HttpServletRequest httpServletRequest) {


//        HttpSession session = myc.getSession(httpServletRequest.getSession().getId());
//
////        model.addAttribute("announcement", announcement);
//
//        Session session1 = SecurityUtils.getSubject().getSession();
//
//        HttpSession session2 = httpServletRequest.getSession();
//
//        if (session.getAttribute("kickout").equals("true")){
//
//            myc.count++;
//
//            System.out.println("myc.getSession(request.getSession().getId()).getAttribute(\"kickout\"):" +session.getAttribute("kickout")+":"+myc.count);
//
//            System.out.println("SecurityUtils.getSubject().getSession().getAttribute(\"kickout\"):" + session1.getAttribute("kickout") + ":" + myc.count);
//
//            System.out.println("httpServletRequest.getSubject().getSession().getAttribute(\"kickout\"):" + session2.getAttribute("kickout") + ":" + myc.count);
//
//
//
//
//        }





        return (String) httpServletRequest.getSession().getAttribute("kickout");


    }



}
