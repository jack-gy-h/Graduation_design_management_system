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

    List<Task> getstudentdoubletaskListByPageAndRows(int page, int rows, String grade, String majorid, String office, String topic, String teacher, String teacheridentitynumber, String type, String source);

    int getstudentdoubletaskListCountByPageAndRows(int page, int rows, String grade, String majorid, String office, String topic, String teacher, String teacheridentitynumber, String type, String source);

    List<Task> getviewlogDatafordoubletaskByPageAndRows(int page, int rows, String taskid);

    int getviewlogDatafordoubletaskCountByPageAndRows(int page, int rows, String taskid);

    int gettaskstudentjudgehaschosen(String userId);

    int gettaskstudentjudgehaschosenThreeTitle(String userId);

    int gettaskstudentjudgehaschosenThreePeople(String taskid);

    void studentdoublechoose(String taskid, String userId);

    int gettaskstudentjudgewhetherchoosethistask(String taskid, String userId);

    List<Task> gettaskstudenthaschosendoubletaskListDataByPageAndRows(int page, int rows,String userId);

    int gettaskstudenthaschosendoubletaskListDataCountByPageAndRows(int page, int rows, String userId);


//    List<Task> gettaskListByPageAndRowsForAuditDouble(int page, int rows, String grade, String majorid);
}
