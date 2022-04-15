package com.design.realm;

import com.design.entity.Menu;
import com.design.entity.User;
import com.design.service.MenuService;
import com.design.service.UserService;
import com.google.common.collect.Lists;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class MyRealm extends AuthorizingRealm {
    @Resource
    private UserService userService;

    @Resource
    private MenuService menuService;

    @Override
    public void setName(String name) {
        super.setName("myRealm");
    }

    //    授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        Session session = SecurityUtils.getSubject().getSession();
        User user = (User) session.getAttribute("user");
        Set<String> identity = Collections.singleton(user.getIdentity());
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo(identity);
        Set<String> permissions = new HashSet<String>();
        List<Menu> list = Lists.newArrayList();
//        如果是超级管理员，则获取所有菜单内的全部权限
        if (user.getIdentity().equals("SUPERADMIN")) {



            List<Menu> sourcelist = menuService.findAllMenu();

            Menu.sortList(list, sourcelist, Menu.getRootId(), true);



        }else {

            if (user.getGrade() == null || user.getCollegeid() == null || user.getMajorid() == null || user.getRoleId() == null){

            }else{
                List<Menu> sourcelist = menuService.getAllMenuByRole(user.getRoleId());

                Menu.sortList(list, sourcelist, Menu.getRootId(), true);
            }
        }

        for (Menu m : list) {

            if (m.getPermission() == null) {


            } else {

                permissions.add(m.getPermission());
            }

        }


        permissions.remove("");


        simpleAuthorizationInfo.setStringPermissions(permissions);

        AuthorizationInfo authcInfo = simpleAuthorizationInfo;

        return authcInfo;
    }

    //    登录认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

        String username = (String) token.getPrincipal();

        //        通过由用户名来获取用户信息的方法来获得数据库中的个人信息再进行比对
        User user = userService.getUserByUsername(username);
        System.out.println("获得了user的内容");
        if (user != null) {
//            在这里用请求获取了当前的Session然后通过setAttribute的方法对
            SecurityUtils.getSubject().getSession().setAttribute("user", user);

            SecurityUtils.getSubject().getSession().setAttribute("kickout", "false");



            System.out.print("username:" + user.getUsername());

            System.out.print("password:" + user.getPassword());

            AuthenticationInfo authcInfo = new SimpleAuthenticationInfo(user.getUsername(), user.getPassword(), this.getName());
            return authcInfo;
        }
        return null;
    }
}
