package com.design.controller;


import com.design.Util.CryptographyUtil;
import com.design.Util.UUIDUtil;
import com.design.entity.Log;
import com.design.entity.Office;
import com.design.entity.User;
import com.design.service.*;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

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

    @Autowired
    private LogServiceI logServiceI;

    private final String SALT = "LOGIN";

    @RequestMapping(value = "")
    public String user() {
        return "userList";
    }

    @RequestMapping(value = "/userListData")
    @ResponseBody
    public Map<String, Object> userListData(int page, int rows, String selectname) {
//        List<User> userList = Lists.newArrayList();
        int Count = 0;
        System.out.println("selectname:" + selectname);
        System.out.println("page:" + page);
        System.out.println("rows:" + rows);
        Map<String, Object> map = Maps.newHashMap();
//        if (selectname == null) {
//            userList = userService.getuserListByPageAndRows(page, rows);
//            Count = userService.getAllCount();
//        }

        List<User> userList = userService.getuserListByPageAndRows(page, rows, selectname);

//        System.out.print(userList.get(0).get);


        System.out.println("userList.get(0).getIdentityNumber():" + userList.get(0).getIdentityNumber());

        System.out.print("userList.get(0).getCollegeid():" + userList.get(0).getCollegeid());


//        for (int i = 0; i < userList.size(); i++) {
//            String collegeid = userList.get(i).getCollegeid();
//
//            if (collegeid != null) {
//
//                Office college = officeService.getOffice(collegeid);
//
//                String college_name = college.getName();
//
//                userList.get(i).setCollegeid(college_name);
//            }
//
//        }

//        Office office = officeService.getOffice(college_id);
//
//        String college_id_CN = office.getName();

        Count = userService.getAllCountBySelectname(selectname);

        map.put("total", Count);


//        System.out.println("college_id_CN:" + college_id_CN);
        map.put("rows", userList);
        return map;

    }

    @RequestMapping(value = "/form")
    public String userForm(Model model, HttpServletRequest request, User user) {

//        String id = request.getParameter("id");
//
//        if (id == null) {
//            user = new Role();
////            model.addAttribute("role", role);
//        } else {
//
//            user = roleService.getRoleById(id);
//
////            System.out.println("id:"+id);
////            System.out.println("role.getMenuIds():"+role.getMenuList());
//        }


        model.addAttribute("user", user);


        List<Office> officeList = officeService.getOfficeParentListById("1");
        for (int i = 0; i < officeList.size(); i++) {
            System.out.println("officeList.get(" + i + ").getName():" + officeList.get(i).getName());
        }

        model.addAttribute("UserParentOffice", officeList);
        model.addAttribute("allRoles", roleService.findAllRole());
        return "userForm";
    }

    @RequestMapping(value = "/addUserRoleForm")
    public String addUserRoleForm(Model model, HttpServletRequest request) {

        String userid = request.getParameter("userid");

//        用到了逆向工程提供的selectByPrimaryKey方法来取user。
        User user = userService.getUserByUserId(userid);

        System.out.print("user.getId():" + user.getId());


        List<Office> officeList = officeService.getOfficeParentListById("1");

        System.out.print("user.getIdentityNumber():" + user.getIdentityNumber());

        System.out.print("user.getIdentity():" + user.getIdentity());

        model.addAttribute("user", user);

        model.addAttribute("UserParentOffice", officeList);

        model.addAttribute("allRoles", roleService.findAllRole());

        return "userRoleForm";


    }

//    删除单个角色的功能
    @RequestMapping(value = "/deleteUserRoleForm")
    public String deleteUserRoleForm(Model model, HttpServletRequest request, User user, Log log) {

        String userid = request.getParameter("userid");

        String identitysid = request.getParameter("identitysid");

        String grade = request.getParameter("grade");

        String collegeid = request.getParameter("collegeid");

        String majorid = request.getParameter("majorid");

        System.out.print("majorid"+majorid);

        String roleId = request.getParameter("roleid");

//        用到了逆向工程提供的selectByPrimaryKey方法来取user。
//        User user = userService.getUserByUserId(userid);
        user.setId(userid);
//        user.setRoleId("'" + user.getRoleId() + "'");

        user.setIdentitysid(identitysid);

        user.setGrade(grade);

        user.setCollegeid(collegeid);

//        user.setMajorid(majorid);

        user.setRoleId(roleId);

        user.setDelFlag("1");

        userService.deleteUserRoleForm("1",userid,identitysid,grade,collegeid,majorid,roleId);

        String id = UUID.randomUUID().toString().replace("-", "");

        String requestUri = request.getRequestURI();//请求的Uri

        User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = loginUser.getId();

        String roleid = loginUser.getRoleId();



        log.setLid(id);

        log.setLaction("删除");

        log.setLcreator(userId);

        log.setIurl(requestUri);

        log.setLremark("单个角色");

        log.setLcreatorrole(roleid);

        log.setLcreatetime(new Date());

        logServiceI.insertSelective(log);

        System.out.print("userid:"+user.getId());

        System.out.print("identitysid:" + identitysid);

        System.out.print("grade:" + grade);

        System.out.print("collegeid:" + collegeid);

        System.out.print("majorid:" + user.getMajorid());

        System.out.print("roleId:" + user.getRoleId());



//        userService.deleteUserRoleForm(user);








//        System.out.print("user.getId():" + user.getId());
//
//
//        List<Office> officeList = officeService.getOfficeParentListById("1");
//
//        System.out.print("user.getIdentityNumber():" + user.getIdentityNumber());
//
//        System.out.print("user.getIdentity():" + user.getIdentity());
//
//        model.addAttribute("user", user);
//
//        model.addAttribute("UserParentOffice", officeList);
//
//        model.addAttribute("allRoles", roleService.findAllRole());

        return "userList";


    }



    //    这里的获取专业是通过学院来获取的，本质上是对office表的操作
    @RequestMapping(value = "/getMajor")
    @ResponseBody
    public List<Office> getMajor(String code) {
        System.out.println("code:" + code);
        List<Office> majorList = officeService.getMajorById(code);

        for (int i = 0; i < majorList.size(); i++) {
            System.out.println("majorList.get(" + i + ").getName():" + majorList.get(i).getName());
        }

        return majorList;


    }

    @RequestMapping(value = "/getCollegeByUserIdAndGradeId")
    @ResponseBody
    public List<Office> getCollegeByUserIdAndGradeId(String userid,String gradeid) {
        System.out.println("gradeid:" + gradeid);
        List<Office> collegeList = officeService.getCollegeByUserIdAndGradeId(userid,gradeid);

        for (int i = 0; i < collegeList.size(); i++) {
            System.out.println("collegeList.get(" + i + ").getName():" + collegeList.get(i).getName());
        }

        return collegeList;


    }

    @RequestMapping(value = "/getMajorByUserIdAndGradeIdAndCollegeid")
    @ResponseBody
    public List<Office> getMajorByUserIdAndGradeIdAndCollegeid(String userid,String gradeid,String collegeid) {
        System.out.println("gradeid:" + gradeid);
        List<Office> majorList = officeService.getMajorByUserIdAndGradeIdAndCollegeid(userid, gradeid,collegeid);

        for (int i = 0; i < majorList.size(); i++) {
            System.out.println("majorList.get(" + i + ").getName():" + majorList.get(i).getName());
        }

        return majorList;


    }

    @RequestMapping(value = "/getMajorByUserIdAndGradeIdAndCollegeidAndMajorId")
    @ResponseBody
    public List<Office> getMajorByUserIdAndGradeIdAndCollegeidAndMajorId(String userid, String gradeid, String collegeid,String majorid) {
        System.out.println("gradeid:" + gradeid);
        List<Office> roleList = officeService.getMajorByUserIdAndGradeIdAndCollegeidAndMajorId(userid, gradeid, collegeid,majorid);

        for (int i = 0; i < roleList.size(); i++) {
            System.out.println("roleList.get(" + i + ").getName():" + roleList.get(i).getName());
        }

        return roleList;


    }

    @RequestMapping("/checkPassword")
    @ResponseBody
    public String checkPassword(String oldPassword, String password) {
        String passwordMd5 = CryptographyUtil.md5(password, SALT);
//        String oldPasswordMd5 = CryptographyUtil.md5(password, SALT);
//        添加时，任意密码均可
//        修改时，原密码不能等于同一个账号下的密码
        if (oldPassword == passwordMd5) {
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
    @RequestMapping(value = "/checkIdentityNumber")
    public String checkEnname(String oldIdentityNumber, String identityNumber) {
        System.out.println("oldIdentityNumber:" + oldIdentityNumber);
        System.out.println("identityNumber:" + identityNumber);
//		添加时，原名为空，填写的名字为空（会不允许提交）、填写的名字不为空

//		则不可能通过第一个if

//		修改时，原名不为空，填写的名字为空（会不允许提交）、填写的名字不为空

//		修改时允许原名和填写名相同，原名和填写名相同时，允许通过，返回true.

//		如果英文名不是空的而且填写的英文名等于旧的英文名，则说明是重复的
        if (identityNumber != null && identityNumber.equals(oldIdentityNumber)) {
            return "true";
        }
//		如果英文名不为空而且根据填写的英文名获取到的角色不为空，则说明英文名是重复的
        else if (identityNumber != null && userService.getUserCountByidentityNumber(identityNumber) == 0) {
            return "true";
        }
//		经过这两重判断后皆没有被拦下，则说明英文名不是重复的，可以提交
        return "false";
    }

    @ResponseBody
    @RequestMapping(value = "/checkUsername")
    public String checkUsername(String oldUsername, String username) {
        System.out.println("oldUsername:" + oldUsername);
        System.out.println("username:" + username);
//		添加时，原名为空，填写的名字为空（会不允许提交）、填写的名字不为空

//		则不可能通过第一个if

//		修改时，原名不为空，填写的名字为空（会不允许提交）、填写的名字不为空

//		修改时允许原名和填写名相同，原名和填写名相同时，允许通过，返回true.

//		如果英文名不是空的而且填写的英文名等于旧的英文名，则说明是重复的
        if (username != null && username.equals(oldUsername)) {
            return "true";
        }
//		如果英文名不为空而且根据填写的英文名获取到的角色不为空，则说明英文名是重复的
        else if (username != null && userService.getUserCountByusername(username) == 0) {
            return "true";
        }
//		经过这两重判断后皆没有被拦下，则说明英文名不是重复的，可以提交
        return "false";
    }

    @RequestMapping(value = "/form/save")
    public String saveUser(User user, HttpServletRequest request, Log log) {

//        String collegeid = user.getCollegeid();
//
//        String majorId = user.getMajorid();
//
//        String roleId = user.getRoleId();
//
//        System.out.print("collegeid:" + collegeid);
//
//        System.out.print("majorId:"+majorId);
//
//        System.out.print("roleId:" + roleId);
//        没有id 说明是添加操作
        if (user.getId() == null) {
//            加入id
            String Id = UUIDUtil.getUUID();

            user.setId(Id);
//            由于密码系统使用的是md5，则需要将手打的密码转化为md5

            String passwordmd5 = CryptographyUtil.md5(user.getPassword(), SALT);

            user.setPassword(passwordmd5);

            user.setDelFlag("0");

//            String a = user.getRoleId();

//    通过测试可以知道，由于带英文的字段插入需要带单引号
//    否则会报错
            user.setRoleId("'" + user.getRoleId() + "'");

            user.setIdentity("USER");

            userService.insert(user);

            System.out.print("user.getId():" + user.getId());

            System.out.print("user.getcollegeid():" + user.getCollegeid());

            System.out.print("user.getmajorid():" + user.getMajorid());

            System.out.print("user.getidentitys():" + user.getIdentitys());

            System.out.print("user.getgrade():" + user.getGrade());

            System.out.print("user.getroleId():" + user.getRoleId());

            userService.insertUserInfoAll(user);

            String id = UUID.randomUUID().toString().replace("-", "");

            String requestUri = request.getRequestURI();//请求的Uri

            User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

            String userId = loginUser.getId();

            String roleid = loginUser.getRoleId();



            log.setLid(id);

            log.setLaction("添加");

            log.setLcreator(userId);

            log.setIurl(requestUri);

            log.setLremark("用户");

            log.setLcreatorrole(roleid);

            log.setLcreatetime(new Date());

            logServiceI.insertSelective(log);


        }



        return "redirect:/user";


    }


    @RequestMapping(value = "/form/saveUserRoleForm")
    public String saveUserRoleForm(User user, HttpServletRequest request, Log log) {

//        String collegeid = user.getCollegeid();
//
//        String majorId = user.getMajorid();
//
//        String roleId = user.getRoleId();
//
//        System.out.print("collegeid:" + collegeid);
//
//        System.out.print("majorId:"+majorId);
//
//        System.out.print("roleId:" + roleId);
//        没有id 说明是添加操作
//        if (user.getId() == null) {
//            加入id
//            String Id = UUIDUtil.getUUID();
//
//            user.setId(Id);
////            由于密码系统使用的是md5，则需要将手打的密码转化为md5
//
//            String passwordmd5 = CryptographyUtil.md5(user.getPassword(), SALT);
//
//            user.setPassword(passwordmd5);

//            user.setDelFlag("0");

//            String a = user.getRoleId();

//    通过测试可以知道，由于带英文的字段插入需要带单引号
//    否则会报错
//        user.setId("'" + user.getId() + "'");
//
//        user.setIdentitys("'" + user.getIdentitys() + "'");
//
//        user.setGrade("'" + user.getGrade() + "'");
//
//        user.setCollegeid("'" + user.getCollegeid() + "'");
//
//        user.setMajorid("'" + user.getMajorid() + "'");

        user.setRoleId("'" + user.getRoleId() + "'");

//            userService.insert(user);

//        System.out.print("user.getId():" + user.getId());
//
//        System.out.print("user.getcollegeid():" + user.getCollegeid());
//
//        System.out.print("user.getmajorid():" + user.getMajorid());
//
//        System.out.print("user.getidentitys():" + user.getIdentitys());
//
//        System.out.print("user.getgrade():" + user.getGrade());
//
//        System.out.print("user.getroleId():" + user.getRoleId());

        userService.insertUserInfoAll(user);


        String id = UUID.randomUUID().toString().replace("-", "");

        String requestUri = request.getRequestURI();//请求的Uri

        User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = loginUser.getId();

        String roleid = loginUser.getRoleId();



        log.setLid(id);

        log.setLaction("添加");

        log.setLcreator(userId);

        log.setIurl(requestUri);

        log.setLremark("用户角色");

        log.setLcreatorrole(roleid);

        log.setLcreatetime(new Date());

        logServiceI.insertSelective(log);



        /*        }*/

        return "redirect:/user";


    }

    @RequestMapping(value = "/enter")
    public String enter(User user,Model model){
//        user传过来的参数

        String grade = user.getGrade();

        String collegeid = user.getCollegeid();

        String majorid = user.getMajorid();

        String roleId = user.getRoleId();



//        user1 session中的参数

        User user1 = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        user1.setGrade(grade);

        user1.setCollegeid(collegeid);

        user1.setMajorid(majorid);

        user1.setRoleId(roleId);

        SecurityUtils.getSubject().getSession().setAttribute("user",user1);

        System.out.print("((User) SecurityUtils.getSubject().getSession().getAttribute(\"user\")).getName():"+((User) SecurityUtils.getSubject().getSession().getAttribute("user")).getName());

//        model.addAttribute("user",user1);



//        user2更新后的user

//        User user2 = (User) SecurityUtils.getSubject().getSession().getAttribute("user");
//
//        System.out.print("user2.getGrade():"+user2.getGrade());
//
//        System.out.print("user2.getCollegeid():" + user2.getCollegeid());
//
//        System.out.print("user2.getMajorid():" + user2.getMajorid());
//
//        System.out.print("user2.getRoleId():" + user2.getRoleId());
//
//        System.out.print("user2.getUsername():" + user2.getUsername());

        return "/UserloginPage";



    }


}
