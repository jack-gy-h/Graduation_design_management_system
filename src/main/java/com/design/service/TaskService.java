package com.design.service;

import com.design.entity.Task;

public interface TaskService {
    Task getTaskById(String id);

    int inserttask(Task task);

    void deleteTaskOffice(Task task);

    void insertTaskOffice(Task task);
}
