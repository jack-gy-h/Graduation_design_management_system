package com.design.service;

import com.design.entity.Menu;
//import com.design.service.Imple.MenuServiceImp;

import java.util.List;

public interface MenuService {

    List<Menu> findAllMenu();

    Menu getMenu(String id);

    int insertmenu(Menu menu);

    int updatemenu(Menu menu);

    Menu selectByPrimaryKey(String id);

    List<Menu> getMenuParentListById(String id);

    List<Menu> getAllMenuById(String userid);

    List<Menu> getAllMenuByRole(String roleid);

//    Menu selectById(String i);
}
