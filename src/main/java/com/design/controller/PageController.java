package com.design.controller;

import com.design.entity.User;
import com.design.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

    @Autowired
    private UserService userService;


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

    @RequestMapping("/UserloginPage")
    public String UserloginPage() {
        System.out.print("((User) SecurityUtils.getSubject().getSession().getAttribute(\"user\")).getName():" + ((User) SecurityUtils.getSubject().getSession().getAttribute("user")).getName());

        return "UserloginPage";
    }

    @RequiresRoles("SUPERADMIN")
    @RequestMapping("/superadminPage")
    public String superadminPage() {


        return "superadminPage";
    }

    @RequiresRoles(value={"SUPERADMIN","USER"},logical = Logical.OR)
    @RequestMapping("/chooseRolePage")
    public String chooseRolePage(Model model) {
        User user = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

//        String username = user.getUsername();

        String userid = user.getId();


        model.addAttribute("GradeList", userService.getGradeListById(userid));

        model.addAttribute("user", user);
        return "chooseRolePage";
    }

    @RequestMapping("/UnAuthc")
    public String UnAuthc() {


        return "401";
    }
}
