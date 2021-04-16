package com.design.service;

import com.design.entity.Task;

import java.util.List;

public interface TaskService {
    Task getTaskById(String id);

    int inserttask(Task task);

    void deleteTaskOffice(Task task);

    void insertTaskOffice(Task task);

    List<Task> getdoubletaskListByPageAndRows(int page, int rows, String grade, String userId, String office, String topic, String teacher, String teacheridentitynumber, String type, String source);

    int getdoubletaskListCountByPageAndRows(int page, int rows, String grade, String userId, String office, String topic, String teacher, String teacheridentitynumber, String type, String source);

    void updateTask(Task task);

    Task getTaskTotalInformationById(String id);

    int deleteTask(Task task);

    List<Task> getdoubletaskListByPageAndRowsForAuditDouble(int page, int rows, String grade, String majorid);

    int getdoubletaskListCountByPageAndRowsForAuditDouble(int page, int rows, String grade, String majorid);


//    List<Task> gettaskListByPageAndRowsForAuditDouble(int page, int rows, String grade, String majorid);
}
