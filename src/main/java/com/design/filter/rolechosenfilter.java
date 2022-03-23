package com.design.filter;

import com.design.entity.User;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.apache.shiro.web.filter.authc.AuthenticationFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class rolechosenfilter extends AccessControlFilter {





    @Override
    protected boolean isAccessAllowed(ServletRequest servletRequest, ServletResponse servletResponse, Object o) throws Exception {
        return false;
    }

    @Override
    protected boolean onAccessDenied(ServletRequest servletRequest, ServletResponse servletResponse) throws Exception {

        HttpServletRequest request = (HttpServletRequest) servletRequest;

        HttpServletResponse response = (HttpServletResponse) servletResponse;


        User user = (User) request.getSession().getAttribute("user");


        if (user.getIdentity().equals("SUPERADMIN")) {

        } else {
            //               有session且身份为user则必须开放登陆界面后续的都可以访问
//                如果 有session且身份为user访问的是角色选择界面，则都放行
//                自身界面、几个参数请求和、user/enter可以放行
//                其余的要验证
            if (request.getRequestURI().equals("/chooseRolePage") ||
                    request.getRequestURI().equals("/user/getCollegeByUserIdAndGradeId") || request.getRequestURI().equals("/user/getMajorByUserIdAndGradeIdAndCollegeid") || request.getRequestURI().equals("/user/getMajorByUserIdAndGradeIdAndCollegeidAndMajorId") || request.getRequestURI().equals("/user/enter")) {


            } else {


//                    验证规则：
//                    如果个人剩余的信息有不完善的，一概不能通过，返回信息界面进行验证
                if (user.getGrade() == null || user.getCollegeid() == null || user.getMajorid() == null || user.getRoleId() == null) {

                    System.out.println("ok1");

                    response.sendRedirect("/chooseRolePage");

                    System.out.println("ok2");

                    return false;


                } else {


                }

                System.out.println("ok3");
            }
            System.out.println("ok4");

        }
        System.out.println("ok5");
        return true;
    }
//        System.out.println("1111111111111111111111111111111111111111111111111111111111");



}
