package com.design.Interceptor;

import com.design.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminResourceInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {

        System.out.println("------------------------------------------------------");

        System.out.println(request.getRequestURI());

        System.out.println("------------------------------------------------------");
        User user = (User) request.getSession().getAttribute("user");
        System.out.println("user.getUsername():" + user.getUsername());
        System.out.println("user.getPassword():" + user.getPassword());
        System.out.println("user.getGrade():" + user.getGrade());
        System.out.println("user.getCollegeid():" + user.getCollegeid());
        System.out.println("user.getMajorid():" + user.getMajorid());
        System.out.println("user.getRoleId() :" + user.getRoleId());


//        无session则拦截（未登录）
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/index");
            System.out.println("22222222222222222222222222222222222");
            return false;
        } else {
//            有session且身份为superadmin则后续的都可以访问
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
        }
        System.out.println("ok6");
//        System.out.println("1111111111111111111111111111111111111111111111111111111111");
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object o, Exception e) throws Exception {

    }
}
