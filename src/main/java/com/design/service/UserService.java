package com.design.service;

import com.design.entity.User;

import java.util.List;

public interface UserService {
    User getUserByUsername(String username);

    List<User> getuserListByPageAndRows(int page, int rows);

    int getAllCount();

    List<User> getuserListByPageAndRowsAndSelectname(int page, int rows, String selectname);

    int getAllCountBySelectname(String selectname);
}
