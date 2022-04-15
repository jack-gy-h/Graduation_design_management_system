package com.design.Listener;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import java.util.ArrayList;

public class SessionAttributeListener implements HttpSessionAttributeListener {


    ServletContext sc;

    ArrayList list = new ArrayList();


    // 在session中添加对象时触发此操作，在list中添加一个对象
    public void attributeAdded(HttpSessionBindingEvent sbe) {
        list.add((String) sbe.getValue());
        System.out.println(sbe.getValue());
        sc.setAttribute("list", list);
    }

    // 修改、删除session中添加对象时触发此操作
    public void attributeRemoved(HttpSessionBindingEvent arg0) {

        System.out.println("5555555");
    }

    public void attributeReplaced(HttpSessionBindingEvent arg0) {
        System.out.println("77777777");

    }

}

