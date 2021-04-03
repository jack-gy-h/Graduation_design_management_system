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

    @Override
    public Menu getMenu(String id) {
        return menuMapper.get(id);
    }

    @Override
    public int insertmenu(Menu menu) {
        return menuMapper.insert(menu);

    }

    @Override
    public int updatemenu(Menu menu) {
       return menuMapper.updateByPrimaryKey(menu);
    }

    @Override
    public Menu selectByPrimaryKey(String id) {
        return menuMapper.get(id);
    }

//    @Override
//    public Menu selectById(String i) {
//        return menuMapper.selectByPrimaryKey(i);
//    }
}
