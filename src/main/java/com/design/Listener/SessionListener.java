package com.design.Listener;

import com.design.common.MySessionContext;
import com.design.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@Configuration
public class SessionListener implements HttpSessionListener {

    @Autowired
    private UserService userService;
    public static SessionListener middleUtil;

    @PostConstruct
    public void init() {
        middleUtil = this;
        middleUtil.userService = this.userService;
    }


    private MySessionContext myc = MySessionContext.getInstance();

    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        HttpSession session = httpSessionEvent.getSession();
        myc.addSession(session);

    }

    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        HttpSession session = httpSessionEvent.getSession();

        String Sessionid = session.getId();
//        session销毁的时候
//        1.属于是踢出的，则不需要删除数据库相关内容
//        因为踢出时由于逻辑问题已进行相关操作
//        这里仅用于超时的和invalidate方法调用时的自动删除
        String kickout = (String) session.getAttribute("kickout");
        if (kickout.equals("true")){



        }else {

            middleUtil.userService.deleteSessionid(Sessionid);
        }



        myc.delSession(session);
    }


}
