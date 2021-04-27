package com.design.controller;

import com.design.entity.AssignmentBook;
import com.design.entity.Task;
import com.design.entity.User;
import com.design.service.AssignmentBookService;
import com.design.service.TaskService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/review")
public class scheduleController {

    @Autowired
    private TaskService taskService;

    @Autowired
    private AssignmentBookService assignmentBookService;

    @RequestMapping(value = "/schedule")
    public String schedule(Task task, Model model){

        User user1 = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user1.getId();

        String grade = user1.getGrade();

        String majorid = user1.getMajorid();


        Task task1 = taskService.getreplytimeBymajorid(majorid);

        try{

            String starttime = task1.getStarttime();

            String endtime= task1.getEndtime();

            model.addAttribute("starttime",starttime);

            model.addAttribute("endtime", endtime);

        }catch (NullPointerException e){

            char starttime1 = ' ';

            char endtime1 = ' ';




            model.addAttribute("starttime", starttime1);

            model.addAttribute("endtime", endtime1);


        }

        model.addAttribute("task",task);

        return "reviewschedule";



    }

    @RequestMapping(value = "/task/schedule")
    public String reviewtaskschedule(Model model){

        User user1 = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user1.getId();

//        String grade = user1.getGrade();
//
//        String majorid = user1.getMajorid();

        List<AssignmentBook> assignmentBookList = assignmentBookService.getAssignmentBookByUser(userId);

        String majorid = assignmentBookList.get(0).getMajorId();

        Task task1 = taskService.getreplytimeBymajorid(majorid);

        try {
            model.addAttribute("starttime", task1.getStarttime());

            model.addAttribute("endtime", task1.getEndtime());
        }catch (NullPointerException e){

            String starttime = "1";

            String endtime = "1";


            model.addAttribute("starttime", starttime);

            model.addAttribute("endtime", endtime);


        }



        return "viewschedule";






    }
}
