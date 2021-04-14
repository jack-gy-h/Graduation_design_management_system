package com.design.service.Imple;

import com.design.dao.LogMapper;
import com.design.entity.Log;
import com.design.service.LogServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogServicelImp implements LogServiceI {

    @Autowired
    private LogMapper logMapper;

    @Override
    public int insertSelective(Log log) {
        return logMapper.insertSelective(log);
    }
}
