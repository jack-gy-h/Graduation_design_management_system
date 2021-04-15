package com.design.controller;

import com.design.entity.*;
import com.design.service.MenuService;
import com.design.service.OfficeService;
import com.design.service.RoleService;
import com.design.service.TaskService;
import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/teacher")
public class TeacherController {

    @Autowired
    private RoleService roleService;

    @Autowired
    private MenuService menuService;

    @Autowired
    private OfficeService officeService;

    @Autowired
    private TaskService taskService;



    @RequestMapping(value = "/release_topic")
    public String releasetopic(Model model, HttpServletRequest request){
        String id = request.getParameter("id");

//        if (id == null) {
            Task task = new Task();

//            task.setCanbechosencollegeid("1");
//            task.setCanbechosencollegeid("2");
            model.addAttribute("task",task);
//        } else {
//
//            Task task = taskService.getTaskById(id);
//            model.addAttribute("task", task);
////            System.out.println("id:"+id);
//            System.out.println("task.getOfficeList():" + task.getOfficeList());
//
//            System.out.print("task.getOfficeIdList():" + task.getOfficeIdList());
//
//            System.out.print("task.getOfficeIds()" + task.getOfficeIds());
//        }

//        获取所有学院的名字
        List<Office> officeList = officeService.getOfficeParentListById("1");
        for (int i = 0; i < officeList.size(); i++) {
            System.out.println("officeList.get(" + i + ").getName():" + officeList.get(i).getName());
        }

        model.addAttribute("UserParentOffice", officeList);



//        获取所有专业节点
        List<Office> list = Lists.newArrayList();

        List<Office> sourcelist = officeService.findAllOffice();

        Office.sortList(list, sourcelist, Office.getRootId(), true);

//        task.setCanbechosencollegeid("2");


        model.addAttribute("officeList", list);




//        model.addAttribute("task",task);



        return "releasetopic";
    }





}
