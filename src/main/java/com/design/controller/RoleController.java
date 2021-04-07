package com.design.controller;

import com.design.Util.UUIDUtil;
import com.design.entity.Menu;
import com.design.entity.Role;
import com.design.entity.User;
import com.design.service.MenuService;
import com.design.service.RoleService;
import com.google.common.collect.Lists;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/role")
public class RoleController {

    @Autowired
    private MenuService menuService;

    @Autowired
    private RoleService roleService;


    @RequestMapping(value = "")
    public String role(Role role,Model model){

        List<Role> Rolelist = roleService.findAllRole();

        model.addAttribute("Rolelist",Rolelist);
        return "roleList";


    }

//    这里的添加角色只需要加入menulist，其他的都是非必须的
//
    @RequestMapping(value = "/form")
    public String role(Model model, HttpServletRequest request){

        String id = request.getParameter("id");

        if(id == null){
            Role role = new Role();
            model.addAttribute("role", role);
        }else {

            Role role = roleService.getRoleById(id);
            model.addAttribute("role",role);
//            System.out.println("id:"+id);
//            System.out.println("role.getMenuIds():"+role.getMenuList());
        }



        List<Menu> list = Lists.newArrayList();

        List<Menu> sourcelist = menuService.findAllMenu();

        Menu.sortList(list, sourcelist, Menu.getRootId(), true);


        model.addAttribute("menuList",list);




//        System.out.println("roleService.getRoleByName(\"部门管理员\"):"+roleService.getRoleCountByEnName("b"));

        return "roleAdd";


    }

//    @RequiresPermissions("user")
    @ResponseBody
    @RequestMapping(value = "checkName")
    public String checkName(String oldName, String name) {
        System.out.println("oldName:"+oldName);
        System.out.println("name:" + name);
        if (name != null && name.equals(oldName)) {
            return "true";
        } else if (name != null && roleService.getRoleCountByName(name) == 0) {
            return "true";
        }
        return "false";
    }

//    /**
//     * 验证角色英文名是否有效
//     *
//     * @param oldName
//     * @param name
//     * @return
//     */
//    @RequiresPermissions("user")

//    验证思路：
//    允许：return "true";
//    不允许：retuen "false";

//    添加时：不允许填写的名字存在数据库中
//    填写的名字存在数据库中:getRoleCountByname > 0
//    不允许:返回false

//    修改时：1.允许与自身相同
//           2.不允许与除了自身之外的名字在数据库中
//    1.与自身相同：oldname == name
//      允许:返回"true"

//    2.除了自身之外的名字在数据库中:oldname !== name || getRoleCountByname > 0
//      不允许：返回"false";


    @ResponseBody
    @RequestMapping(value = "checkEnname")
    public String checkEnname(String oldEnname, String enname) {
//		添加时，原名为空，填写的名字为空（会不允许提交）、填写的名字不为空

//		则不可能通过第一个if

//		修改时，原名不为空，填写的名字为空（会不允许提交）、填写的名字不为空

//		修改时允许原名和填写名相同，原名和填写名相同时，允许通过，返回true.

//		如果英文名不是空的而且填写的英文名等于旧的英文名，则说明是重复的
        if (enname != null && enname.equals(oldEnname)) {
            return "true";
        }
//		如果英文名不为空而且根据填写的英文名获取到的角色不为空，则说明英文名是重复的
        else if (enname != null && roleService.getRoleCountByEnName(enname) == 0 ) {
            return "true";
        }
//		经过这两重判断后皆没有被拦下，则说明英文名不是重复的，可以提交
        return "false";
    }

    @RequestMapping(value = "/form/save")
    public String saveRole(Role role){
        User user = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user.getId().toString();

        Date date = new Date();

//        如果id是空的，则说明是添加操作
        if(role.getId().equals("")){

            String Id = UUIDUtil.getUUID();

            role.setId(Id);

            role.setUpdateBy(userId);

            role.setCreateBy(userId);

            role.setUpdateDate(date);

            role.setCreateDate(date);

            roleService.insertrole(role);



        }
//        如果id不是空的，说明是修改操作
        else{

            role.setUpdateBy(userId);

            role.setUpdateDate(date);

            if(role.getCreateBy() == null){
                role.setCreateBy(userId);
            }
            if(role.getCreateDate() == null){

                role.setCreateDate(date);

            }

            roleService.updateRole(role);

        }

        roleService.deleteRoleMenu(role);

        roleService.insertRoleMenu(role);

        System.out.println("role.getMenuIdList():" + role.getMenuIdList());


        return "redirect:/role";




    }


    @RequestMapping(value = "/delete")
    public String deleteRole(HttpServletRequest request){

        String id = request.getParameter("id");

        Role role = roleService.getRoleById(id);

        role.setDelFlag("1");

        roleService.deleteRole(role);

        return "redirect:/role";




    }

//55
}
