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


//    @Override
//    public int getdoubletaskListCountByPageAndRows(int page, int rows, String grade, String userId, String office, String topic, String teacher, String teacheridentitynumber, String type, String source) {
//        return taskMapper.getdoubletaskListCountByPageAndRows();
//    }

//    @Override
//    public List<Task> gettaskListByPageAndRowsForAuditDouble(int page, int rows, String grade, String majorid) {
//        return taskMapper.getdoubletaskListByPageAndRows(page,rows,grade,majorid);
//    }
}
