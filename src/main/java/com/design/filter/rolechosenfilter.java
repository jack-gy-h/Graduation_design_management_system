package com.design.filter;

import com.design.common.MySessionContext;
import com.design.entity.User;
import com.design.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class rolechosenfilter extends AccessControlFilter {

    @Autowired
    private UserService userService;


    private MySessionContext myc = MySessionContext.getInstance();





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

                    if(request.getRequestURI().equals("/kickout")){

                    }else {

                        List<User> allSessionId = userService.getallSessionIdByAllInformation(user.getUiaid(), "0");

                        if (allSessionId.size() == 0) {

                            userService.insertUserOnLineSession(user.getUiaid(), request.getSession().getId());


                        } else {

                            String Sessionid = allSessionId.get(0).getSessionid();
                            String NowSessionid = request.getSession().getId();
                            if (Sessionid.equals(NowSessionid)) {


                            } else {

                                HttpSession session = myc.getSession(Sessionid);

                                session.setAttribute("kickout", "true");
//
//                                System.out.println("myc.getSession(request.getSession().getId()).getAttribute(\"kickout\"):"+myc.getSession(request.getSession().getId()).getAttribute("kickout"));
//
//                                System.out.println("SecurityUtils.getSubject().getSession().getAttribute(\"kickout\"):"+SecurityUtils.getSubject().getSession().getAttribute("kickout"));

//                                        HttpSession session = myc.getSession(httpServletRequest.getSession().getId());
//
////        model.addAttribute("announcement", announcement);
//
//        Session session1 = SecurityUtils.getSubject().getSession();



                                userService.deleteSessionid(Sessionid);

                                userService.insertUserOnLineSession(user.getUiaid(), NowSessionid);


                            }


                        }
                    }
















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
