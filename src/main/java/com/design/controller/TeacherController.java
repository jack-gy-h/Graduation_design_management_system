package com.design.controller;

import com.design.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/Teacher")
public class TeacherController {



    @RequestMapping(value = "/release_topic")
    public String releasetopic(User user, Model model){


        model.addAttribute("user",user);



        return "releasetopic";
    }





}
