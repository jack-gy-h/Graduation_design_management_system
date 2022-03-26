package com.design.controller;

import com.design.Util.UUIDUtil;
import com.design.annotation.ControllerLog;
import com.design.entity.Log;
import com.design.entity.Office;
import com.design.entity.User;
import com.design.service.LogServiceI;
import com.design.service.OfficeService;
import com.google.common.collect.Lists;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping(value = "/office")
public class OfficeController {

    @Autowired
    private OfficeService officeService;

    @Autowired
    private LogServiceI logServiceI;

    @ControllerLog(Action = "查看", Remark = "机构列表")
    @RequiresPermissions("office:view")
    @RequestMapping(value = {""})
    public String list(Model model, HttpServletRequest request, Log log) {
        List<Office> list = Lists.newArrayList();

        List<Office> sourcelist = officeService.findAllOffice();


        Office.sortList(list, sourcelist, Office.getRootId(), true);

        model.addAttribute("list", list);
        return "officeList";
    }

    //  上级菜单选择跳转
    @RequestMapping("/form/parentOfficeSelect")
    public String parentOfficeSelect(Model model, HttpServletRequest request) {
        List<Office> list = Lists.newArrayList();

        List<Office> sourcelist = officeService.findAllOffice();

        Office.sortList(list, sourcelist, "0", true);

        String a = request.getParameter("url");

        System.out.println("a:" + a);

        model.addAttribute("list", list);


        return "parentOfficeSelect";
    }

    @RequiresPermissions(value = {"office:view", "office:add"}, logical = Logical.AND)
    //菜单操作功能
    @RequestMapping(value = "form")
    public String form(Office office, Model model, HttpServletRequest request) {
        if (office.getParent() == null || office.getParent().getId() == null) {

//                        if (request.getParameter("pid") != null){
////                office.setParent(new Office(Office.getRootId()));
//                office.setParent(new Office(request.getParameter("pid")));
//            }else if(request.getParameter("id") != null){
//                office.setParent(new Office(Office.getRootId()));
//            }else{
//                office.setParent(new Office(Office.getRootId()));
            if (request.getParameter("pid") != null) {
                if (request.getParameter("id") != null) {
//                   同时具有pid和id则只能返回添加菜单
                    office.setParent(new Office(Office.getRootId()));
                    office.setParent(officeService.getOffice(office.getParent().getId()));
//                office.setParent(new Office(request.getParameter("pid")));
                } else {
//                只有pid没有id则是选择菜单后的跳转
                    office.setParent(new Office(request.getParameter("pid")));
                    office.setParent(officeService.getOffice(office.getParent().getId()));

                }
            } else {

                if (request.getParameter("id") != null) {
//                没有pid但是有id的话，则说明是修改菜单
                    String id = request.getParameter("id");
                    office = officeService.getOffice(id);
                    model.addAttribute("office", office);
                    return "officeFormModify";

                } else {
//                没有pid也没有id的话，只能返回添加菜单
                    office.setParent(new Office(Office.getRootId()));
                    System.out.println("office.getParent().getId():" + office.getParent().getId());
                    office.setParent(officeService.getOffice(office.getParent().getId()));
                    System.out.println("office.getParentId():" + office.getParent().getId());

                }
            }
//            System.out.println("office.getSort():"+office.getSort());
//            System.out.println("office.getIsShow():" + office.getIsShow());
//            System.out.println("office.getDelFlag():" + office.getDelFlag());

//      Office.getRootId()获取到的是数值1
//      new Office(Office.getRootId())指的是构造了一个id为1的Office
//
//            System.out.println("11111111111111111111111111111111111111");

//            System.out.println("22222222222222222222222222222222222222");
        }
//        System.out.println("333333333333333333333333333333333333333");
        System.out.println(officeService.getOffice(office.getParent().getId()));
//        System.out.println("444444444444444444444444444444444444444");
//        这一步主要根据parent的id在数据库中获取到整个完整的、实际的Office parent
//        为后面显示office.parent.id or office.parent.name做准备


//        office.setParent(officeService.getOffice(office.getParent().getId()));


//        System.out.println("55555555555555555555555555555555");


//        System.out.println("officeService.getOffice(office.getParent().getId()):"+ officeService.getOffice(office.getParent().getId()));
        // 获取排序号，最末节点排序号+30
        if (StringUtils.isBlank(office.getId())) {
            List<Office> list = Lists.newArrayList();
            List<Office> sourcelist = officeService.findAllOffice();
            Office.sortList(list, sourcelist, office.getParentId(), false);
            if (list.size() > 0) {
                office.setSort(list.get(list.size() - 1).getSort() + 30);
            }
        }
        model.addAttribute("office", office);
        return "officeFormAdd";
    }

    @RequiresPermissions(value = {"office:view", "office:add"}, logical = Logical.AND)
    //    保存菜单
    @RequestMapping(value = "/form/save")
    public String form(Office office, HttpServletRequest request, Log log) {
//        主要有两种形式的提交：
//         一种是只获取到了office的parent,相当于新插入一个office到数据库中(insert操作)
//        另外一种是获取到了整个office，相当于update office
        User user = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user.getId().toString();

        Date date = new Date();

        String oldIds = officeService.getOffice(office.getParent().getId()).getParentIds();

        System.out.println("oldIds:" + oldIds);

        String newIds = oldIds + office.getParent().getId() + ",";

        System.out.println(newIds);

        office.setParentIds(newIds);

        System.out.println("office.getId():" + office.getId());


//        如果id是空的，说明是一个新插入操作(insert操作)
        if (office.getId().equals("")) {
            String Id = UUIDUtil.getUUID();

            office.setId(Id);

            office.setUpdateBy(userId);

            office.setCreateBy(userId);

            office.setUpdateDate(date);

            office.setCreateDate(date);

            officeService.insertoffice(office);


            String id = UUID.randomUUID().toString().replace("-", "");


            String requestUri = request.getRequestURI();//请求的Uri

            User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

//            String userId = loginUser.getId();

            String roleid = loginUser.getRoleId();


            log.setLid(id);

            log.setLaction("添加");

            log.setLcreator(userId);

            log.setIurl(requestUri);


//        log.setLip(remoteAddr);
//        log.setLmodule(controllerMethodDescription.get("module"));
            log.setLremark("机构");


            log.setLcreatorrole(roleid);

//        System.out.print("controllerMethodDescription.get(\"module\"):"+controllerMethodDescription.get("module"));
//        System.out.print("controllerMethodDescription.get(\"remark\"):"+controllerMethodDescription.get("remark"));
//        Date operateDate = beginTimeThreadLocal.get();
            log.setLcreatetime(new Date());

            logServiceI.insertSelective(log);


        } else {
//            如果不是空，则说明是修改操作
            office.setUpdateBy(userId);

            System.out.println("1111111111111111111111");

            office.setUpdateDate(date);

            System.out.println("2222222222222222222222222");

            if (office.getCreateBy() == null) {

                System.out.println("33333333333333333333333");

                office.setCreateBy(userId);

            }
            if (office.getCreateDate() == null) {

                System.out.println("44444444444444444444444");

                office.setCreateDate(date);

            }

            officeService.updateoffice(office);

            System.out.println("5555555555555555555555555555");


            String id = UUID.randomUUID().toString().replace("-", "");


            String requestUri = request.getRequestURI();//请求的Uri

            User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

//            String userId = loginUser.getId();
            String roleid = loginUser.getRoleId();


            log.setLid(id);

            log.setLaction("修改");

            log.setLcreator(userId);

            log.setIurl(requestUri);


//        log.setLip(remoteAddr);
//        log.setLmodule(controllerMethodDescription.get("module"));
            log.setLremark("机构");

            log.setLcreatorrole(roleid);
//        System.out.print("controllerMethodDescription.get(\"module\"):"+controllerMethodDescription.get("module"));
//        System.out.print("controllerMethodDescription.get(\"remark\"):"+controllerMethodDescription.get("remark"));
//        Date operateDate = beginTimeThreadLocal.get();
            log.setLcreatetime(new Date());

            logServiceI.insertSelective(log);

        }

        String UUID = UUIDUtil.getUUID();
        System.out.println("UUID:" + UUID);
        return "redirect:/office";


    }

    @RequiresPermissions("office:view")
    //获取菜单数据实现动态加载
//    需要返回json数据时，记得加上@ResponseBody
    @RequestMapping(value = "/listData")
    @ResponseBody
    public List<Office> listData() {
        List<Office> list = Lists.newArrayList();

        List<Office> sourcelist = officeService.findAllOffice();

        Office.sortList(list, sourcelist, Office.getRootId(), true);

        System.out.println("list.get(0).getId():" + list.get(0).getId());

        return list;

    }

    @RequiresPermissions(value = {"office:view", "office:delete"}, logical = Logical.AND)
    @RequestMapping(value = "delete")

    public String delete(HttpServletRequest request, Log log) {

        User user = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user.getId().toString();

        Date date = new Date();

        System.out.println();

        String id = request.getParameter("id");

        System.out.println("officeService.selectByPrimaryKey(id).getParentId():" + officeService.selectByPrimaryKey(id).getParentId());

        Office office = officeService.getOffice(id);

        office.setDelFlag("1");

        System.out.println("office.getDelFlag():" + office.getDelFlag());
//        System.out.println("office.getIsShow():" + office.getIsShow());
        System.out.println("office.getCreateBy():" + office.getCreateBy());
        System.out.println("office.getDelFlag():" + office.getDelFlag());
//        System.out.println("office.getHref():" + office.getHref());
//        System.out.println("office.getIcon():" + office.getIcon());
        System.out.println("office.getId():" + office.getId());
        System.out.println("office.getName():" + office.getName());
        System.out.println("office.getParentId():" + office.getParentId());
        System.out.println("office.getParent():" + office.getParent());
        System.out.println("office.getParentIds():" + office.getParentIds());
//        System.out.println("office.getPermission():" + office.getPermission());
        System.out.println("office.getRemarks():" + office.getRemarks());
//        System.out.println("office.getTarget():" + office.getTarget());
        System.out.println("office.getUpdateBy():" + office.getUpdateBy());
        System.out.println("office.getCreateDate():" + office.getCreateDate());
        System.out.println("office.getSort():" + office.getSort());
        System.out.println("office.getUpdateDate():" + office.getUpdateDate());
//        if(office.getCreateDate() == null){
//
//            office.setCreateDate();
//
//        }

        officeService.updateoffice(office);


        String id1 = UUID.randomUUID().toString().replace("-", "");


        String requestUri = request.getRequestURI();//请求的Uri

        User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

//        String userId = loginUser.getId();

        String roleid = loginUser.getRoleId();


        log.setLid(id1);

        log.setLaction("删除");

        log.setLcreator(userId);

        log.setIurl(requestUri);


//        log.setLip(remoteAddr);
//        log.setLmodule(controllerMethodDescription.get("module"));
        log.setLremark("机构");

        log.setLcreatorrole(roleid);
//        System.out.print("controllerMethodDescription.get(\"module\"):"+controllerMethodDescription.get("module"));
//        System.out.print("controllerMethodDescription.get(\"remark\"):"+controllerMethodDescription.get("remark"));
//        Date operateDate = beginTimeThreadLocal.get();
        log.setLcreatetime(new Date());

        logServiceI.insertSelective(log);

        return "redirect:/office";

    }

    @RequiresPermissions(value = {"office:view", "office:updatesort"}, logical = Logical.AND)
    @RequestMapping(value = "updateSort")
    public String updateSort(String[] ids, Integer[] sorts, HttpServletRequest request, Log log) {

        System.out.println("ids[0]:" + ids[0]);

        for (int i = 0; i < ids.length; i++) {
            Office office = officeService.getOffice(ids[i]);
            office.setSort(sorts[i]);
            officeService.updateoffice(office);
        }


        String id = UUID.randomUUID().toString().replace("-", "");


        String requestUri = request.getRequestURI();//请求的Uri

        User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = loginUser.getId();

        String roleid = loginUser.getRoleId();


        log.setLid(id);

        log.setLaction("升级");

        log.setLcreator(userId);

        log.setIurl(requestUri);


//        log.setLip(remoteAddr);
//        log.setLmodule(controllerMethodDescription.get("module"));
        log.setLremark("机构排序");

        log.setLcreatorrole(roleid);
//        System.out.print("controllerMethodDescription.get(\"module\"):"+controllerMethodDescription.get("module"));
//        System.out.print("controllerMethodDescription.get(\"remark\"):"+controllerMethodDescription.get("remark"));
//        Date operateDate = beginTimeThreadLocal.get();
        log.setLcreatetime(new Date());

        logServiceI.insertSelective(log);
        return "redirect:/office";
    }


}
