package com.design.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {


    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/adminloginPage")
    public String adminloginPage() {
        return "adminloginPage";
    }

    @RequestMapping("/teacherloginPage")
    public String teacherloginPage() {
        return "teacherloginPage";
    }

    @RequestMapping("/studentloginPage")
    public String studentloginPage() {
        return "studentloginPage";
    }

    @RequestMapping("/superadminPage")
    public String superadminPage() {
        return "superadminPage";
    }
}
