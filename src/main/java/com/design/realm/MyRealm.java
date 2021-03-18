package com.design.realm;

import com.design.entity.User;
import com.design.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;

public class MyRealm extends AuthorizingRealm {
    @Resource
    private UserService userService;

    @Override
    public void setName(String name){super.setName("myRealm");}
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
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
            AuthenticationInfo authcInfo = new SimpleAuthenticationInfo(user.getUsername(), user.getPassword(), this.getName());
            return authcInfo;
        }
        return null;
    }
}
