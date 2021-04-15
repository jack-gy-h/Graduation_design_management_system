package com.design.controller;


import com.design.Util.UUIDUtil;
import com.design.entity.Log;
import com.design.entity.Task;
import com.design.entity.User;
import com.design.service.LogServiceI;
import com.design.service.TaskService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.UUID;

@Controller
@RequestMapping(value = "task")
public class TaskController {

    @Autowired
    private TaskService taskService;

    @Autowired
    private LogServiceI logServiceI;

    @RequestMapping(value = "/form/save")
    public String saveTask(Task task, HttpServletRequest request, Log log) {
        User user = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user.getId().toString();

        Date date = new Date();

        System.out.print("task.getId():"+task.getId());

//        如果id是空的，则说明是添加操作
//        if (task.getId().equals("")||task.getId() ==null) {

            String Id = UUIDUtil.getUUID();

            task.setId(Id);

//            task.setUpdateBy(userId);
//
//            task.setCreateBy(userId);

            task.setUpdateDate(date);

            task.setCreateDate(date);

//            task.setDelFlag("0");

            String id = UUID.randomUUID().toString().replace("-", "");

            String requestUri = request.getRequestURI();//请求的Uri

            User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

//            String userId = loginUser.getId();

            log.setLid(id);

            log.setLaction("添加");

            log.setLcreator(userId);

            log.setIurl(requestUri);

            log.setLremark("课题");

            log.setLcreatetime(new Date());

            logServiceI.insertSelective(log);


            taskService.inserttask(task);


//        }
//        如果id不是空的，说明是修改操作
//        else {
//
//            task.setUpdateBy(userId);
//
//            task.setUpdateDate(date);
//
//            if (task.getCreateBy() == null) {
//                task.setCreateBy(userId);
//            }
//            if (task.getCreateDate() == null) {
//
//                task.setCreateDate(date);
//
//            }
//
//            taskService.updateTask(task);
//
//            String id = UUID.randomUUID().toString().replace("-", "");
//
//            String requestUri = request.getRequestURI();//请求的Uri
//
//            User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");
//
////            String userId = loginUser.getId();
//
//            log.setLid(id);
//
//            log.setLaction("修改");
//
//            log.setLcreator(userId);
//
//            log.setIurl(requestUri);
//
//            log.setLremark("课题");
//
//            log.setLcreatetime(new Date());
//
//            logServiceI.insertSelective(log);
//
//
//        }

        System.out.print("task.getOfficeList()1:" + task.getOfficeList());

        System.out.print("task.getOfficeIdList()1:" + task.getOfficeIdList());

        System.out.print("task.getOfficeIds()1:" + task.getOfficeIds());

        taskService.deleteTaskOffice(task);

        taskService.insertTaskOffice(task);

        System.out.println("task.getOfficeIdList():" + task.getOfficeIdList());


        return "redirect:/release_topic";


    }
}
