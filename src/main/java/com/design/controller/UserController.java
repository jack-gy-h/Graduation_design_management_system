package com.design.controller;


import com.design.entity.Menu;
import com.design.entity.User;
import com.design.service.MenuService;
import com.design.service.UserService;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    private MenuService menuService;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "")
    public String user(){
        return "userList";
    }

    @RequestMapping(value = "/userListData")
    @ResponseBody
    public Map<String,Object> userListData(int page,int rows,String selectname){
        List<User> userList = Lists.newArrayList();
        int Count = 0;
        System.out.println("selectname:" + selectname);
        System.out.println("page:"+page);
        System.out.println("rows:"+rows);
        Map<String, Object> map = Maps.newHashMap();
        if (selectname == null){
            userList = userService.getuserListByPageAndRows(page, rows);
            Count = userService.getAllCount();
        }
        userList = userService.getuserListByPageAndRowsAndSelectname(page,rows,selectname);

        Count = userService.getAllCountBySelectname(selectname);

        map.put("total",Count);
        System.out.println("userService.getAllCount():"+userService.getAllCount());
        map.put("rows",userList);
        return map;

    }

    @RequestMapping(value = "/form")
    public String userForm(User user, Model model){
        List<Menu> menuList = menuService.getMenuParentListById("1");
        for(int i = 0;i<menuList.size();i++){
            System.out.println("menuList.get("+i+").getName():"+menuList.get(i).getName());
        }
        model.addAttribute("UserParentMenu",menuList);
        model.addAttribute("user",user);
        return "userForm";
    }

    @RequestMapping(value = "/getChildMenu")
    @ResponseBody
    public List<Menu> getChildMenu(String code){
        System.out.println("code:"+code);
        List<Menu> menuList = menuService.getMenuParentListById(code);

        for (int i = 0; i < menuList.size(); i++) {
            System.out.println("menuList.get(" + i + ").getName():" + menuList.get(i).getName());
        }

        return menuList;


    }
}
