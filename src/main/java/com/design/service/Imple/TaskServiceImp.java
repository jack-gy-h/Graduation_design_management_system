package com.design.service.Imple;

import com.design.dao.TaskMapper;
import com.design.entity.Task;
import com.design.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TaskServiceImp implements TaskService {

    @Autowired
    private TaskMapper taskMapper;

    @Override
    public Task getTaskById(String id) {
        return taskMapper.getTaskById(id);
    }

    @Override
    public int inserttask(Task task) {
        return taskMapper.insert(task);
    }

    @Override
    public void deleteTaskOffice(Task task) {
        taskMapper.deleteTaskOffice(task);
    }

    @Override
    public void insertTaskOffice(Task task) {
        taskMapper.insertTaskOffice(task);
    }

    @Override
    public List<Task> getdoubletaskListByPageAndRows(int page, int rows, String grade,String userId,String office, String topic, String teacher, String teacheridentitynumber, String type, String source) {
        page = (page - 1) * rows;
        return taskMapper.getdoubletaskListByPageAndRows(page, rows, grade, userId,office, topic, teacher, teacheridentitynumber, type, source);
    }

    @Override
    public int getdoubletaskListCountByPageAndRows(int page, int rows, String grade, String userId, String office, String topic, String teacher, String teacheridentitynumber, String type, String source) {
        return taskMapper.getdoubletaskListCountByPageAndRows(page, rows, grade, userId, office, topic, teacher, teacheridentitynumber, type, source);
    }

    @Override
    public void updateTask(Task task) {
        taskMapper.updateByPrimaryKey(task);

    }

    @Override
    public Task getTaskTotalInformationById(String id) {
        return taskMapper.getTaskTotalInformationById(id);
    }

    @Override
    public int deleteTask(Task task) {
        return taskMapper.updateByPrimaryKey(task);
    }

    @Override
    public List<Task> getdoubletaskListByPageAndRowsForAuditDouble(int page, int rows, String grade, String majorid) {
        return taskMapper.getdoubletaskListByPageAndRowsForAuditDouble(page,rows,grade,majorid);
    }

    @Override
    public int getdoubletaskListCountByPageAndRowsForAuditDouble(int page, int rows, String grade, String majorid) {
        return taskMapper.getdoubletaskListCountByPageAndRowsForAuditDouble(page, rows, grade, majorid);
    }

    @Override
    public List<Task> getstudentdoubletaskListByPageAndRows(int page, int rows, String grade, String majorid, String office, String topic, String teacher, String teacheridentitynumber, String type, String source) {
        page = (page - 1) * rows;
        return taskMapper.getstudentdoubletaskListByPageAndRows(page, rows, grade, majorid, office, topic, teacher, teacheridentitynumber, type, source);
    }

    @Override
    public int getstudentdoubletaskListCountByPageAndRows(int page, int rows, String grade, String majorid, String office, String topic, String teacher, String teacheridentitynumber, String type, String source) {
        return taskMapper.getstudentdoubletaskListCountByPageAndRows(page, rows, grade, majorid, office, topic, teacher, teacheridentitynumber, type, source);
    }

    @Override
    public List<Task> getviewlogDatafordoubletaskByPageAndRows(int page, int rows, String taskid) {
        page = (page - 1) * rows;
        return taskMapper.getviewlogDatafordoubletaskByPageAndRows(page,rows,taskid);
    }

    @Override
    public int getviewlogDatafordoubletaskCountByPageAndRows(int page, int rows, String taskid) {
        return taskMapper.getviewlogDatafordoubletaskCountByPageAndRows(page, rows, taskid);
    }

    @Override
    public int gettaskstudentjudgehaschosen(String userId) {
        return taskMapper.gettaskstudentjudgehaschosen(userId);
    }

    @Override
    public int gettaskstudentjudgehaschosenThreeTitle(String userId) {
        return taskMapper.gettaskstudentjudgehaschosenThreeTitle(userId);
    }

    @Override
    public int gettaskstudentjudgehaschosenThreePeople(String taskid) {
        return taskMapper.gettaskstudentjudgehaschosenThreePeople(taskid);
    }

    @Override
    public void studentdoublechoose(String taskid, String userId) {
        taskMapper.studentdoublechoose(taskid, userId);
    }

    @Override
    public int gettaskstudentjudgewhetherchoosethistask(String taskid, String userId) {
        return taskMapper.gettaskstudentjudgewhetherchoosethistask(taskid,userId);
    }

    @Override
    public List<Task> gettaskstudenthaschosendoubletaskListDataByPageAndRows(int page, int rows,String userId) {
        page = (page - 1) * rows;
        return taskMapper.gettaskstudenthaschosendoubletaskListDataByPageAndRows(page,rows, userId);
    }

    @Override
    public int gettaskstudenthaschosendoubletaskListDataCountByPageAndRows(int page, int rows, String userId) {
        return taskMapper.gettaskstudenthaschosendoubletaskListDataCountByPageAndRows(page, rows, userId);
    }

    @Override
    public void deletehaschosentopic(String taskid, String userId) {
        taskMapper.deletehaschosentopic(taskid,userId);

    }

    @Override
    public List<Task> getviewchosenstudentallListData(int page, int rows, String userId,String grade) {
        page = (page - 1) * rows;
        return taskMapper.getviewchosenstudentallListData(page,rows,userId, grade);
    }

    @Override
    public int getviewchosenstudentallListDataCountByPageAndRows(int page, int rows, String userId, String grade) {
        return taskMapper.getviewchosenstudentallListDataCountByPageAndRows(page, rows, userId, grade);
    }

    @Override
    public void updateTaskChosenStatus(String taskid, String choosestatusId, String studentId,String status) {
        taskMapper.updateTaskChosenStatus(taskid, choosestatusId, studentId, status);
    }

    @Override
    public void inserttaskchosen(Task task) {
        taskMapper.inserttaskchosen(task);

    }

    @Override
    public List<Task> gettaskstudentreleasetaskListData(int page, int rows, String userId, String grade) {
        page = (page - 1) * rows;
        return taskMapper.gettaskstudentreleasetaskListData(page, rows, userId, grade);
    }

    @Override
    public Task getTaskForstudentchoosemodifyById(String id) {
        return taskMapper.getTaskForstudentchoosemodifyById(id);
    }

    @Override
    public int updatetask(Task task) {
        return taskMapper.updateByPrimaryKey(task);
    }

    @Override
    public void updatetaskchosen(Task task) {
        taskMapper.updatetaskchosen(task);
    }

    @Override
    public List<Task> gettaskviewauditstudentreleaseListData(int page, int rows, String userId,String grade) {
        page = (page - 1) * rows;
        return taskMapper.gettaskviewauditstudentreleaseListData(page,rows,userId,grade);
    }

    @Override
    public List<Task> gettaskteacherassignListData(int page, int rows, String userId, String grade) {
        page = (page - 1) * rows;
        return taskMapper.gettaskteacherassignListData(page, rows, userId, grade);
    }

    @Override
    public List<Task> gettaskviewauditteacherassignListData(int page, int rows, String grade, String majorid) {
        return taskMapper.gettaskviewauditteacherassignListData(page, rows, grade, majorid);
    }

    @Override
    public void updatetaskteacherassign(Task task) {
        taskMapper.updatetaskteacherassign(task);
    }

    @Override
    public List<Task> getviewchosenstudentallForanypatternListData(int page, int rows, String userId, String grade) {
        return taskMapper.getviewchosenstudentallForanypatternListData(page, rows, userId, grade);
    }

    @Override
    public Task getTaskByIdTrue(String id) {
        return taskMapper.getTaskByIdTrue(id);
    }

//    @Override
//    public List<Task> getviewteacherassignListData(int page, int rows, String grade, String majorid) {
//        return taskMapper.getviewteacherassignListData(page, rows, grade, majorid);
//    }


//    @Override
//    public int getdoubletaskListCountByPageAndRows(int page, int rows, String grade, String userId, String office, String topic, String teacher, String teacheridentitynumber, String type, String source) {
//        return taskMapper.getdoubletaskListCountByPageAndRows();
//    }

//    @Override
//    public List<Task> gettaskListByPageAndRowsForAuditDouble(int page, int rows, String grade, String majorid) {
//        return taskMapper.getdoubletaskListByPageAndRows(page,rows,grade,majorid);
//    }
}
