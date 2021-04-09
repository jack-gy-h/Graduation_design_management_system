package com.design.controller;


import com.design.Util.CryptographyUtil;
import com.design.entity.Menu;
import com.design.entity.Office;
import com.design.entity.User;
import com.design.service.MenuService;
import com.design.service.OfficeService;
import com.design.service.RoleService;
import com.design.service.UserService;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    private MenuService menuService;

    @Autowired
    private UserService userService;

    @Autowired
    private OfficeService officeService;

    @Autowired
    private RoleService roleService;

    private final String SALT = "LOGIN";

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
        List<Office> officeList = officeService.getOfficeParentListById("1");
        for(int i = 0;i<officeList.size();i++){
            System.out.println("officeList.get("+i+").getName():"+officeList.get(i).getName());
        }
        model.addAttribute("UserParentOffice",officeList);
        model.addAttribute("user",user);
        model.addAttribute("allRoles",roleService.findAllRole());
        return "userForm";
    }

    @RequestMapping(value = "/getChildOffice")
    @ResponseBody
    public List<Office> getChildOffice(String code){
        System.out.println("code:"+code);
        List<Office> officeList = officeService.getOfficeParentListById(code);

        for (int i = 0; i < officeList.size(); i++) {
            System.out.println("officeList.get(" + i + ").getName():" + officeList.get(i).getName());
        }

        return officeList;


    }

    @RequestMapping("/checkPassword")
    @ResponseBody
    public String checkPassword(String oldPassword,String password){
        String passwordMd5 = CryptographyUtil.md5(password, SALT);
//        String oldPasswordMd5 = CryptographyUtil.md5(password, SALT);
//        添加时，任意密码均可
//        修改时，原密码不能等于同一个账号下的密码
        if(oldPassword == passwordMd5){
            return "false";
        }
        return "true";
    }

//    @RequestMapping("/checkConfirmPassword")
//    @ResponseBody
//    public String checkConfirmPassword(HttpServletRequest request, String confirmpassword){
//        String password = request.getParameter("password");
//        System.out.println("password:"+password);
//        System.out.println("confirmpassword:" + confirmpassword);
//        if (password == confirmpassword){
//            return "true";
//        }
//        return "false";
//
//    }

    @ResponseBody
    @RequestMapping(value = "/checkStudentNumber")
    public String checkEnname(String oldStudentNumber, String studentNumber) {
        System.out.println("oldStudentNumber:"+oldStudentNumber);
        System.out.println("studentNumber:" + studentNumber);
//		添加时，原名为空，填写的名字为空（会不允许提交）、填写的名字不为空

//		则不可能通过第一个if

//		修改时，原名不为空，填写的名字为空（会不允许提交）、填写的名字不为空

//		修改时允许原名和填写名相同，原名和填写名相同时，允许通过，返回true.

//		如果英文名不是空的而且填写的英文名等于旧的英文名，则说明是重复的
        if (studentNumber != null && studentNumber.equals(oldStudentNumber)) {
            return "true";
        }
//		如果英文名不为空而且根据填写的英文名获取到的角色不为空，则说明英文名是重复的
        else if (studentNumber != null && userService.getUserCountBystudentNumber(studentNumber) == 0) {
            return "true";
        }
//		经过这两重判断后皆没有被拦下，则说明英文名不是重复的，可以提交
        return "false";
    }

}
