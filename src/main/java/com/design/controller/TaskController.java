package com.design.controller;


import com.design.Util.UUIDUtil;
import com.design.entity.*;
import com.design.service.LogServiceI;
import com.design.service.OfficeService;
import com.design.service.TaskService;
import com.google.common.collect.Lists;
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

            String roleid = loginUser.getRoleId();



            log.setLid(id);

            log.setLaction("添加");

            log.setLcreator(userId);

            log.setIurl(requestUri);

            log.setLremark("课题");

            log.setLtask(Id);

            log.setLcreatorrole(roleid);

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

            String roleid = loginUser.getRoleId();



            log.setLid(id);

            log.setLaction("修改");

            log.setLcreator(userId);

            log.setIurl(requestUri);

            log.setLremark("课题");

            log.setLtask(task.getId());

            log.setLcreatorrole(roleid);

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

            String roleid = loginUser.getRoleId();



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

            log.setLcreatorrole(roleid);

            log.setLcreatetime(new Date());

            logServiceI.insertSelective(log);





        }
        return "redirect:/task/audit/doublelist";







    }

    //    学生双选查看列表
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


        List<Task> taskList = taskService.getstudentdoubletaskListByPageAndRows(page, rows, grade,majorid, office, topic, teacher, teacheridentitynumber, type, source);

//        List<Task>  list = Lists.newArrayList();
//
//
//        for(int i =0 ; i <taskList.size();i++){
//            if (taskList.get(i).getTcs() == null || !taskList.get(i).getTcs().equals("2")) {
//
//                list.add(taskList.get(i));
//
//            }
//        }



//        System.out.println("taskList.get(0).getTcs():" + taskList.get(0).getTcs());


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

    @RequestMapping(value = "/student/viewtopic")

    public String studentviewtopic(Model model, HttpServletRequest request) {

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

        return "viewtopicforstudentchoose";


    }

    @RequestMapping(value = "/viewlogDatafordoubletask")
    @ResponseBody
    public Map<String, Object> viewlogDatafordoubletask(int page, int rows,String taskid) {
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

//        遴选出属于这个选题的日志
        List<Task> taskList = taskService.getviewlogDatafordoubletaskByPageAndRows(page, rows,taskid);

        System.out.print("taskList.get(0).getOperator():"+taskList.get(0).getOperator());


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

//        Count = taskService.getstudentdoubletaskListCountByPageAndRows(page, rows, grade, majorid, office, topic, teacher, teacheridentitynumber, type, source);

        Count = taskService.getviewlogDatafordoubletaskCountByPageAndRows(page, rows, taskid);

        map.put("total", Count);


//        System.out.println("college_id_CN:" + college_id_CN);
        map.put("rows", taskList);
        return map;

    }


//    查看确认通过的选题的数目

//    有选题是指自己本身id在task_chosen表中（即tc.chosen_student = #{userId}）

//    而且teacher_choose_status为2（确认通过）（tc.teacher_choose_status = 2）

//    这里无论是什么类型的选题，只要被选上都符合上面的条件
    @RequestMapping(value = "/student/judge/haschosenAndPass")
    @ResponseBody
    public int taskstudentjudgehaschosenAndPass(){
        User user = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user.getId();

        int Count = taskService.gettaskstudentjudgehaschosen(userId);

        return Count;


    }

//    查看等待确认的课题数，即已选题数

//    你自己

//    WHERE tc.chosen_student = #{userId}

//    等待确认的课题
//          AND tc.teacher_choose_status = 1



    @RequestMapping(value = "/student/judge/haschosenThree")
    @ResponseBody
    public int taskstudentjudgehaschosenThree() {

        User user = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user.getId();

        int Count = taskService.gettaskstudentjudgehaschosenThreeTitle(userId);

        return Count;


    }
//学生选题时
//判断选了几个人
//            WHERE tc.task_id = #{taskid}
//          AND tc.teacher_choose_status = 1
//    该选题下等待确认的人数
//    即使是退选或者选上了也需要老师手动退选，因此无需担心
    @RequestMapping(value = "/student/judge/haschosenPeople")
    @ResponseBody
    public int taskstudentjudgehaschosenPeople(String taskid) {

        System.out.print("taskid:"+taskid);

        User user = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user.getId();

        int Count = taskService.gettaskstudentjudgehaschosenThreePeople(taskid);

        return Count;


    }

//    学生选题时
//    判断是否选择了这个题目
    @RequestMapping(value = "/student/judge/whetherchoosethistask")
    @ResponseBody
    public int studentjudgewhetherchoosethistask(String taskid) {

        System.out.print("taskid:" + taskid);

        User user = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user.getId();

        int Count = taskService.gettaskstudentjudgewhetherchoosethistask(taskid,userId);

        return Count;


    }

//    学生双选题目选择 插入操作
    @RequestMapping(value = "/student/double/choose")
    public String taskstudentdoublechoose(HttpServletRequest request){

        String taskid = request.getParameter("taskid");

        User user = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user.getId();

        taskService.studentdoublechoose(taskid,userId);

        return "redirect:/task/student/doublechoselist";





    }

//    学生已经进行双选的题目列表
    @RequestMapping(value = "/student/haschosendoubletaskListData")
    @ResponseBody
    public Map<String, Object> taskstudenthaschosendoubletaskListData(int page, int rows) {

        int Count = 0;


        Map<String, Object> map = Maps.newHashMap();

//        }
        User user1 = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user1.getId();


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


        List<Task> taskList = taskService.gettaskstudenthaschosendoubletaskListDataByPageAndRows(page, rows,userId);


        Count = taskService.gettaskstudenthaschosendoubletaskListDataCountByPageAndRows(page, rows,userId);

        map.put("total", Count);


//        System.out.println("college_id_CN:" + college_id_CN);
        map.put("rows", taskList);
        return map;

    }



}
