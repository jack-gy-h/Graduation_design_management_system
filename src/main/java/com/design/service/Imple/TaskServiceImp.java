package com.design.service.Imple;

import com.design.dao.TaskMapper;
import com.design.entity.Task;
import com.design.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
