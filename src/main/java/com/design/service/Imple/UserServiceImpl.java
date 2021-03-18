package com.design.service.Imple;

import com.design.dao.UserMapper;
import com.design.entity.User;
import com.design.entity.UserExample;
import com.design.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {


    @Autowired
    private UserMapper userMapper;

    @Override
    public User getUserByUsername(String username) {

        UserExample example = new UserExample();

        UserExample.Criteria criteria = example.createCriteria();

        criteria.andUsernameEqualTo(username);

        List<User> list = userMapper.selectByExample(example);

        if (list != null && list.size() > 0) {

            return list.get(0);

        } else {

            return null;

        }
    }



}
