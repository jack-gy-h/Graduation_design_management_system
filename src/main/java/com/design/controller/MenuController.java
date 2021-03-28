package com.design.controller;

import com.design.entity.Menu;
import com.design.service.MenuService;
import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/menu")
public class MenuController {

    @Autowired
    private MenuService menuService;

    @RequestMapping(value = {"list", ""})
    public String list(Model model) {
        List<Menu> list = Lists.newArrayList();
        List<Menu> sourcelist = menuService.findAllMenu();
//        Menu menu = menuService.selectById("61");
//        System.out.println("menu.getDelFlag():" + menu.getDelFlag());
//        System.out.println("sourcelist.get(0):" + sourcelist.get(0).getSort());
//        System.out.println("sourcelist.get(1):" + sourcelist.get(1).getSort());
//        System.out.println("sourcelist.get(2):" + sourcelist.get(2).getSort());
//        System.out.println("sourcelist.get(3):" + sourcelist.get(3).getSort());
//        System.out.println("sourcelist.get(4):" + sourcelist.get(4).getSort());
//        System.out.println("sourcelist.get(4).getIsShow():" + sourcelist.get(4).getIsShow());
//        System.out.println("sourcelist.get(4).getCreateBy():" + sourcelist.get(4).getCreateBy());
//        System.out.println("sourcelist.get(4).getDelFlag():" + sourcelist.get(4).getDelFlag());
//        System.out.println("sourcelist.get(4).getHref():" + sourcelist.get(4).getHref());
//        System.out.println("sourcelist.get(4).getIcon():" + sourcelist.get(4).getIcon());
//        System.out.println("sourcelist.get(4).getId():" + sourcelist.get(4).getId());
//        System.out.println("sourcelist.get(4).getName():" + sourcelist.get(4).getName());
//        System.out.println("sourcelist.get(4).getParentId():" + sourcelist.get(4).getParentId());
//        System.out.println("sourcelist.get(4).getParent():" + sourcelist.get(4).getParent());
//        System.out.println("sourcelist.get(4).getParentIds():" + sourcelist.get(4).getParentIds());
//        System.out.println("sourcelist.get(4).getPermission():" + sourcelist.get(4).getPermission());
//        System.out.println("sourcelist.get(4).getRemarks():" + sourcelist.get(4).getRemarks());
//        System.out.println("sourcelist.get(4).getTarget():" + sourcelist.get(4).getTarget());
//        System.out.println("sourcelist.get(4).getUpdateBy():" + sourcelist.get(4).getUpdateBy());
//        System.out.println("sourcelist.get(4).getCreateDate():" + sourcelist.get(4).getCreateDate());
//        System.out.println("sourcelist.get(4).getSort():" + sourcelist.get(4).getSort());
//        System.out.println("sourcelist.get(4).getUpdateDate():" + sourcelist.get(4).getUpdateDate());




        Menu.sortList(list, sourcelist, Menu.getRootId(), true);

//        System.out.println("list.get(0):" + list.get(0).getIsShow());
//        System.out.println("list.get(1):" + list.get(1).getIsShow());
//        System.out.println("list.get(2):" + list.get(2).getIsShow());
//        System.out.println("list.get(3):" + list.get(3).getIsShow());
//        System.out.println("list.get(4):" + list.get(4).getIsShow());
//        System.out.println("list.get(61):" + list.get(61).getSort());
//        System.out.println("list.get(61).getIsShow():" + list.get(61).getIsShow());
//        System.out.println("list.get(61).getCreateBy():" + list.get(61).getCreateBy());
//        System.out.println("list.get(61).getDelFlag():" + list.get(61).getDelFlag());
//        System.out.println("list.get(61).getHref():" + list.get(61).getHref());
//        System.out.println("list.get(61).getIcon():" + list.get(61).getIcon());
//        System.out.println("list.get(61).getId():" + list.get(61).getId());
//        System.out.println("list.get(61).getName():" + list.get(61).getName());
//        System.out.println("list.get(61).getParentId():" + list.get(61).getParentId());
//        System.out.println("list.get(61).getParent():" + list.get(61).getParent());
//        System.out.println("list.get(61).getParentIds():" + list.get(61).getParentIds());
//        System.out.println("list.get(61).getPermission():" + list.get(61).getPermission());
//        System.out.println("list.get(61).getRemarks():" + list.get(61).getRemarks());
//        System.out.println("list.get(61).getTarget():" + list.get(61).getTarget());
//        System.out.println("list.get(61).getUpdateBy():" + list.get(61).getUpdateBy());
//        System.out.println("list.get(61).getCreateDate():" + list.get(61).getCreateDate());
//        System.out.println("list.get(61).getSort():" + list.get(61).getSort());
//        System.out.println("list.get(61).getUpdateDate():" + list.get(61).getUpdateDate());
        model.addAttribute("list", list);
        return "menuList";
    }


}
