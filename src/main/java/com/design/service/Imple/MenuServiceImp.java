package com.design.service.Imple;

import com.design.dao.MenuMapper;
import com.design.entity.Menu;
import com.design.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuServiceImp implements MenuService {

    @Autowired
    private MenuMapper menuMapper;

    @Override
    public List<Menu> findAllMenu() {
        return menuMapper.findAllMenu();
    }

//    @Override
//    public Menu selectById(String i) {
//        return menuMapper.selectByPrimaryKey(i);
//    }
}
