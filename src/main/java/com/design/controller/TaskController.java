package com.design.controller;


import com.design.Util.UUIDUtil;
import com.design.entity.Log;
import com.design.entity.Office;
import com.design.entity.Task;
import com.design.entity.User;
import com.design.service.LogServiceI;
import com.design.service.OfficeService;
import com.design.service.TaskService;
import com.google.common.collect.Maps;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping(value = "task")
public class TaskController {

    @Autowired
    private TaskService taskService;

    @Autowired
    private LogServiceI logServiceI;

    @Autowired
    private OfficeService officeService;


    //    师生双选保存功能
    @RequestMapping(value = "/form/save")
    public String saveTask(Task task, HttpServletRequest request, Log log) {
        User user = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user.getId().toString();

        Date date = new Date();

        System.out.print("task.getId():" + task.getId());

//        如果id是空的，则说明是添加操作
        if (task.getId() == null ||task.getId().equals("")) {

            String Id = UUIDUtil.getUUID();


//            由于是添加操作，因此要添加taskid。
            task.setId(Id);
//          师生双选
            task.setPattern("1");

            task.setTeacherId(userId);

            task.setAuditStatus("3");

            task.setGrade(((User) SecurityUtils.getSubject().getSession().getAttribute("user")).getGrade());

//            task.setUpdateBy(userId);
//
//            task.setCreateBy(userId);

            task.setCreateDate(date);

            task.setUpdateDate(date);




//            task.setDelFlag("0");




            taskService.inserttask(task);

            String id = UUID.randomUUID().toString().replace("-", "");

            String requestUri = request.getRequestURI();//请求的Uri

            User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

//            String userId = loginUser.getId();

            log.setLid(id);

            log.setLaction("添加");

            log.setLcreator(userId);

            log.setIurl(requestUri);

            log.setLremark("课题");

            log.setLtask(Id);

            log.setLcreatetime(new Date());

            logServiceI.insertSelective(log);

        } else {

//            task.setUpdateBy(userId);



//修改之后肯定是未审核状态

            task.setAuditStatus("3");

            task.setUpdateDate(date);
//            if (task.getCreateBy() == null) {
//                task.setCreateBy(userId);
//            }
//            if (task.getCreateDate() == null) {
//
//                task.setCreateDate(date);
//
//            }

            taskService.updateTask(task);

            String id = UUID.randomUUID().toString().replace("-", "");

            String requestUri = request.getRequestURI();//请求的Uri

            User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

//            String userId = loginUser.getId();

            log.setLid(id);

            log.setLaction("修改");

            log.setLcreator(userId);

            log.setIurl(requestUri);

            log.setLremark("课题");

            log.setLtask(task.getId());

            log.setLcreatetime(new Date());

            logServiceI.insertSelective(log);


        }

        System.out.print("task.getOfficeList()1:" + task.getOfficeList());

        System.out.print("task.getOfficeIdList()1:" + task.getOfficeIdList());

        System.out.print("task.getOfficeIds()1:" + task.getOfficeIds());

        taskService.deleteTaskOffice(task);

        taskService.insertTaskOffice(task);

        System.out.println("task.getOfficeIdList():" + task.getOfficeIdList());


        return "teacherTaskList";


    }

//    系主任审核双选题目
    @RequestMapping(value = "/audit/doublelist")
    public String auditdoublelist(Task task, HttpServletRequest request, Log log) {



        return "auditdoubleTaskList";


    }


//    整体思路：
//    取出该学年的
//    本专业下的
//    双选题目（t.pattern=1）
//    而且该题目还没有被审核（t.audit_status = 3）
//    而且是正常状态下的题目（t.del_Flag = 0）
    @RequestMapping(value = "/audit/double/ListData")
    @ResponseBody
    public Map<String, Object> auditdoubleListData(int page, int rows) {

        //        List<Task> taskList = Lists.newArrayList();
        int Count = 0;
//        System.out.println("selectname:" + selectname);


        Map<String, Object> map = Maps.newHashMap();
//        if (selectname == null) {
//            taskList = taskService.gettaskListByPageAndRows(page, rows);
//            Count = taskService.getAllCount();
//        }
        User user1 = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user1.getId();

//        String officet = office;

        String grade = user1.getGrade();

        String majorid = user1.getMajorid();

//        System.out.println("page:" + page);
//        System.out.println("rows:" + rows);
//        System.out.println("grade:" + grade);
//        System.out.println("userId:" + userId);
//        System.out.println("office:" + office);
//        System.out.println("topic:" + topic);
//        System.out.println("teacher:" + teacher);
//        System.out.println("teacheridentitynumber:" + teacheridentitynumber);
//        System.out.println("type:" + type);
//        System.out.println("source:" + source);

        List<Task> taskList = taskService.getdoubletaskListByPageAndRowsForAuditDouble(page, rows, grade,majorid);


//        System.out.print("taskList.get(0).getTopic():"+taskList.get(0));
//
//        System.out.print("taskList.get(0).getCreateDate():" + taskList.get(0).getCreateDate());

//        System.out.print(taskList.get(0).get);


//        System.out.println("taskList.get(0).getIdentityNumber():" + taskList.get(0).getIdentityNumber());
//
//        System.out.print("taskList.get(0).getCollegeid():" + taskList.get(0).getCollegeid());


//        for (int i = 0; i < taskList.size(); i++) {
//            String collegeid = taskList.get(i).getCollegeid();
//
//            if (collegeid != null) {
//
//                Office college = officeService.getOffice(collegeid);
//
//                String college_name = college.getName();
//
//                taskList.get(i).setCollegeid(college_name);
//            }
//
//        }

//        Office office = officeService.getOffice(college_id);
//
//        String college_id_CN = office.getName();

        Count = taskService.getdoubletaskListCountByPageAndRowsForAuditDouble(page, rows, grade, majorid);

        map.put("total", Count);


//        System.out.println("college_id_CN:" + college_id_CN);
        map.put("rows", taskList);
        return map;


    }



//    只有返回键的viewtopic
    @RequestMapping(value = "/viewtopic")

    public String viewtopic(Model model, HttpServletRequest request) {

        String id = request.getParameter("id");

        Task task = taskService.getTaskTotalInformationById(id);

//        task.get


        model.addAttribute("task", task);
//
//        List<Office> officeList = officeService.getOfficeParentListById("1");
//        for (int i = 0; i < officeList.size(); i++) {
//            System.out.println("officeList.get(" + i + ").getName():" + officeList.get(i).getName());
//        }
//
//        model.addAttribute("UserParentOffice", officeList);

//        model.addAttribute("task",task);

        return "viewtopicfordoubleaudit";


    }

    @RequestMapping(value = "/audit/double")
    public String auditdouble(HttpServletRequest request,Log log){

        String id = request.getParameter("id");

        String audit_status = request.getParameter("audit_status");

        System.out.print("id:"+id);

        System.out.print("audit_status:" + audit_status);

        if(audit_status.equals("1") || audit_status.equals("2")){
            System.out.print("111111111111111111111111");

            Task task = taskService.getTaskById(id);

            System.out.print("2222222222222222222222222222");

            task.setAuditStatus(audit_status);

            System.out.print("333333333333333333333333333");

            taskService.updateTask(task);

            System.out.print("444444444444444444444444");

            String logid = UUID.randomUUID().toString().replace("-", "");

            String requestUri = request.getRequestURI();//请求的Uri

            User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

            String userId = loginUser.getId();

            log.setLid(logid);

            if(audit_status.equals("1")){

                log.setLaction("通过");

            }else if (audit_status.equals("2")){

                log.setLaction("不通过");
            }



            log.setLcreator(userId);

            log.setIurl(requestUri);

            log.setLremark("双选课题审核");

            log.setLtask(id);

            log.setLcreatetime(new Date());

            logServiceI.insertSelective(log);





        }
        return "redirect:/task/audit/doublelist";







    }


    @RequestMapping(value = "/student/doublechoselist")
    public String studentdoublechoselist(Model model){

        List<Office> officeList = officeService.getOfficeParentListById("1");
        for (int i = 0; i < officeList.size(); i++) {
            System.out.println("officeList.get(" + i + ").getName():" + officeList.get(i).getName());
        }

        model.addAttribute("UserParentOffice", officeList);

        return "studentTaskList";


    }

    @RequestMapping(value = "/student/doubletaskListData")
    @ResponseBody
    public Map<String, Object> doubletaskListData(int page, int rows, String office, String topic, String teacher, String teacheridentitynumber, String type, String source) {
//        List<Task> taskList = Lists.newArrayList();
        int Count = 0;
//        System.out.println("selectname:" + selectname);


        Map<String, Object> map = Maps.newHashMap();
//        if (selectname == null) {
//            taskList = taskService.gettaskListByPageAndRows(page, rows);
//            Count = taskService.getAllCount();
//        }
        User user1 = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user1.getId();

//        String officet = office;

        String grade = user1.getGrade();

        String majorid = user1.getMajorid();

        System.out.println("page:" + page);
        System.out.println("rows:" + rows);
        System.out.println("grade:" + grade);
        System.out.println("userId:" + userId);
        System.out.println("office:" + office);
        System.out.println("topic:" + topic);
        System.out.println("teacher:" + teacher);
        System.out.println("teacheridentitynumber:" + teacheridentitynumber);
        System.out.println("type:" + type);
        System.out.println("source:" + source);

        List<Task> taskList = taskService.getstudentdoubletaskListByPageAndRows(page, rows, grade,majorid, office, topic, teacher, teacheridentitynumber, type, source);


//        System.out.print("taskList.get(0).getTopic():"+taskList.get(0));
//
//        System.out.print("taskList.get(0).getCreateDate():" + taskList.get(0).getCreateDate());

//        System.out.print(taskList.get(0).get);


//        System.out.println("taskList.get(0).getIdentityNumber():" + taskList.get(0).getIdentityNumber());
//
//        System.out.print("taskList.get(0).getCollegeid():" + taskList.get(0).getCollegeid());


//        for (int i = 0; i < taskList.size(); i++) {
//            String collegeid = taskList.get(i).getCollegeid();
//
//            if (collegeid != null) {
//
//                Office college = officeService.getOffice(collegeid);
//
//                String college_name = college.getName();
//
//                taskList.get(i).setCollegeid(college_name);
//            }
//
//        }

//        Office office = officeService.getOffice(college_id);
//
//        String college_id_CN = office.getName();


//        Count = taskService.getdoubletaskListCountByPageAndRows(page, rows, grade, userId, office, topic, teacher, teacheridentitynumber, type, source);

        Count = taskService.getstudentdoubletaskListCountByPageAndRows(page, rows, grade, majorid, office, topic, teacher, teacheridentitynumber, type, source);

        map.put("total", Count);


//        System.out.println("college_id_CN:" + college_id_CN);
        map.put("rows", taskList);
        return map;

    }


}
