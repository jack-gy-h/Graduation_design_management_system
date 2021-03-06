package com.design.controller;

import com.design.Util.UUIDUtil;
import com.design.entity.Log;
import com.design.entity.Office;
import com.design.entity.User;
import com.design.service.LogServiceI;
import com.design.service.OfficeService;
import com.google.common.collect.Lists;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
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


    @RequestMapping(value = {""})
    public String list(Model model, HttpServletRequest request, Log log) {
        List<Office> list = Lists.newArrayList();
        System.out.println("111111111111111111111");
        List<Office> sourcelist = officeService.findAllOffice();
        System.out.println("22222222222222222222");
//        Office office = officeService.selectById("61");
//        System.out.println("office.getDelFlag():" + office.getDelFlag());
//        System.out.println("sourcelist.get(0):" + sourcelist.get(0).getSort());
//        System.out.println("sourcelist.get(1):" + sourcelist.get(1).getSort());
//        System.out.println("sourcelist.get(2):" + sourcelist.get(2).getSort());
//        System.out.println("sourcelist.get(3):" + sourcelist.get(3).getSort());
//        System.out.println("sourcelist.get(4):" + sourcelist.get(4).getSort());
//        System.out.println("sourcelist.get(4).getIsShow():" + sourcelist.get(4).getIsShow());
//        System.out.println("sourcelist.get(4).getCreateBy():" + sourcelist.get(4).getCreateBy());
//        System.out.println("sourcelist.get(4).getDelFlag():" + sourcelist.get(4).getDelFlag());
//        System.out.println("sourcelist.get(4).getHref():" + sourcelist.get(4).getHref());
//        System.out.println("sourcelist.get(4).getIcon():" + sourcelist.get(4).getIcon());
//        System.out.println("sourcelist.get(4).getId():" + sourcelist.get(4).getId());
        System.out.println("sourcelist.get(0).getName():" + sourcelist.get(0).getName());
//        System.out.println("sourcelist.get(4).getParentId():" + sourcelist.get(4).getParentId());
//        System.out.println("sourcelist.get(4).getParent():" + sourcelist.get(4).getParent());
//        System.out.println("sourcelist.get(4).getParentIds():" + sourcelist.get(4).getParentIds());
//        System.out.println("sourcelist.get(4).getPermission():" + sourcelist.get(4).getPermission());
//        System.out.println("sourcelist.get(4).getRemarks():" + sourcelist.get(4).getRemarks());
//        System.out.println("sourcelist.get(4).getTarget():" + sourcelist.get(4).getTarget());
//        System.out.println("sourcelist.get(4).getUpdateBy():" + sourcelist.get(4).getUpdateBy());
//        System.out.println("sourcelist.get(4).getCreateDate():" + sourcelist.get(4).getCreateDate());
//        System.out.println("sourcelist.get(4).getSort():" + sourcelist.get(4).getSort());
//        System.out.println("sourcelist.get(4).getUpdateDate():" + sourcelist.get(4).getUpdateDate());


        Office.sortList(list, sourcelist, Office.getRootId(), true);
//        for (int i = 0; i < sourcelist.size(); i++) {
//            System.out.println("sourcelist.get(" + i + ").getName():" + sourcelist.get(i).getName());
//
//        }
//        for (int i = 0; i < list.size(); i++) {
//            System.out.println("list.get(" + i + ").getName():" + list.get(i).getName());
//
//        }

//        System.out.println("list.get(0):" + list.get(0).getIsShow());
//        System.out.println("list.get(1):" + list.get(1).getIsShow());
//        System.out.println("list.get(2):" + list.get(2).getIsShow());
//        System.out.println("list.get(3):" + list.get(3).getIsShow());
//        System.out.println("list.get(4):" + list.get(4).getIsShow());
//        System.out.println("list.get(61):" + list.get(61).getSort());
//        System.out.println("list.get(61).getIsShow():" + list.get(61).getIsShow());
//        System.out.println("list.get(61).getCreateBy():" + list.get(61).getCreateBy());
//        System.out.println("list.get(61).getDelFlag():" + list.get(61).getDelFlag());
//        System.out.println("list.get(61).getHref():" + list.get(61).getHref());
//        System.out.println("list.get(61).getIcon():" + list.get(61).getIcon());
//        System.out.println("list.get(61).getId():" + list.get(61).getId());
//        System.out.println("list.get(61).getName():" + list.get(61).getName());
//        System.out.println("list.get(61).getParentId():" + list.get(61).getParentId());
//        System.out.println("list.get(61).getParent():" + list.get(61).getParent());
//        System.out.println("list.get(61).getParentIds():" + list.get(61).getParentIds());
//        System.out.println("list.get(61).getPermission():" + list.get(61).getPermission());
//        System.out.println("list.get(61).getRemarks():" + list.get(61).getRemarks());
//        System.out.println("list.get(61).getTarget():" + list.get(61).getTarget());
//        System.out.println("list.get(61).getUpdateBy():" + list.get(61).getUpdateBy());
//        System.out.println("list.get(61).getCreateDate():" + list.get(61).getCreateDate());
//        System.out.println("list.get(61).getSort():" + list.get(61).getSort());
//        System.out.println("list.get(61).getUpdateDate():" + list.get(61).getUpdateDate());
//        System.out.println("UUIDUtil.getUUID():"+UUIDUtil.getUUID());

        String id = UUID.randomUUID().toString().replace("-", "");


        String requestUri = request.getRequestURI();//?????????Uri

        User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = loginUser.getId();

        String roleid = loginUser.getRoleId();



        log.setLid(id);

        log.setLaction("??????");

        log.setLcreator(userId);

        log.setIurl(requestUri);


//        log.setLip(remoteAddr);
//        log.setLmodule(controllerMethodDescription.get("module"));
        log.setLremark("??????");

        log.setLcreatorrole(roleid);
//        System.out.print("controllerMethodDescription.get(\"module\"):"+controllerMethodDescription.get("module"));
//        System.out.print("controllerMethodDescription.get(\"remark\"):"+controllerMethodDescription.get("remark"));
//        Date operateDate = beginTimeThreadLocal.get();
        log.setLcreatetime(new Date());

        logServiceI.insertSelective(log);
        model.addAttribute("list", list);
        return "officeList";
    }

    //  ????????????????????????
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

    //??????????????????
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
//                   ????????????pid???id???????????????????????????
                    office.setParent(new Office(Office.getRootId()));
                    office.setParent(officeService.getOffice(office.getParent().getId()));
//                office.setParent(new Office(request.getParameter("pid")));
                } else {
//                ??????pid??????id??????????????????????????????
                    office.setParent(new Office(request.getParameter("pid")));
                    office.setParent(officeService.getOffice(office.getParent().getId()));

                }
            } else {

                if (request.getParameter("id") != null) {
//                ??????pid?????????id?????????????????????????????????
                    String id = request.getParameter("id");
                    office = officeService.getOffice(id);
                    model.addAttribute("office", office);
                    return "officeFormModify";

                } else {
//                ??????pid?????????id?????????????????????????????????
                    office.setParent(new Office(Office.getRootId()));
                    System.out.println("office.getParent().getId():"+office.getParent().getId());
                    office.setParent(officeService.getOffice(office.getParent().getId()));
                    System.out.println("office.getParentId():"+ office.getParent().getId());

                }
            }
//            System.out.println("office.getSort():"+office.getSort());
//            System.out.println("office.getIsShow():" + office.getIsShow());
//            System.out.println("office.getDelFlag():" + office.getDelFlag());

//      Office.getRootId()?????????????????????1
//      new Office(Office.getRootId())????????????????????????id???1???Office
//
//            System.out.println("11111111111111111111111111111111111111");

//            System.out.println("22222222222222222222222222222222222222");
        }
//        System.out.println("333333333333333333333333333333333333333");
        System.out.println(officeService.getOffice(office.getParent().getId()));
//        System.out.println("444444444444444444444444444444444444444");
//        ?????????????????????parent???id???????????????????????????????????????????????????Office parent
//        ???????????????office.parent.id or office.parent.name?????????


//        office.setParent(officeService.getOffice(office.getParent().getId()));


//        System.out.println("55555555555555555555555555555555");


//        System.out.println("officeService.getOffice(office.getParent().getId()):"+ officeService.getOffice(office.getParent().getId()));
        // ???????????????????????????????????????+30
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



//    ????????????
    @RequestMapping(value = "/form/save")
    public String form(Office office, HttpServletRequest request,Log log){
//        ?????????????????????????????????
//         ????????????????????????office???parent,????????????????????????office???????????????(insert??????)
//        ?????????????????????????????????office????????????update office
        User user = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user.getId().toString();

        Date date = new Date();

        String oldIds = officeService.getOffice(office.getParent().getId()).getParentIds();

        System.out.println("oldIds:"+oldIds);

        String newIds = oldIds + office.getParent().getId() + ",";

        System.out.println(newIds);

        office.setParentIds(newIds);

        System.out.println("office.getId():"+office.getId());


//        ??????id??????????????????????????????????????????(insert??????)
        if(office.getId().equals("")){
            String Id = UUIDUtil.getUUID();

            office.setId(Id);

            office.setUpdateBy(userId);

            office.setCreateBy(userId);

            office.setUpdateDate(date);

            office.setCreateDate(date);

            officeService.insertoffice(office);


            String id = UUID.randomUUID().toString().replace("-", "");


            String requestUri = request.getRequestURI();//?????????Uri

            User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

//            String userId = loginUser.getId();

            String roleid = loginUser.getRoleId();


            log.setLid(id);

            log.setLaction("??????");

            log.setLcreator(userId);

            log.setIurl(requestUri);


//        log.setLip(remoteAddr);
//        log.setLmodule(controllerMethodDescription.get("module"));
            log.setLremark("??????");


            log.setLcreatorrole(roleid);

//        System.out.print("controllerMethodDescription.get(\"module\"):"+controllerMethodDescription.get("module"));
//        System.out.print("controllerMethodDescription.get(\"remark\"):"+controllerMethodDescription.get("remark"));
//        Date operateDate = beginTimeThreadLocal.get();
            log.setLcreatetime(new Date());

            logServiceI.insertSelective(log);




        }else{
//            ??????????????????????????????????????????
            office.setUpdateBy(userId);

            System.out.println("1111111111111111111111");

            office.setUpdateDate(date);

            System.out.println("2222222222222222222222222");

            if(office.getCreateBy() == null){

                System.out.println("33333333333333333333333");

                office.setCreateBy(userId);

            }
            if(office.getCreateDate() == null){

                System.out.println("44444444444444444444444");

                office.setCreateDate(date);

            }

            officeService.updateoffice(office);

            System.out.println("5555555555555555555555555555");


            String id = UUID.randomUUID().toString().replace("-", "");


            String requestUri = request.getRequestURI();//?????????Uri

            User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

//            String userId = loginUser.getId();
            String roleid = loginUser.getRoleId();



            log.setLid(id);

            log.setLaction("??????");

            log.setLcreator(userId);

            log.setIurl(requestUri);


//        log.setLip(remoteAddr);
//        log.setLmodule(controllerMethodDescription.get("module"));
            log.setLremark("??????");

            log.setLcreatorrole(roleid);
//        System.out.print("controllerMethodDescription.get(\"module\"):"+controllerMethodDescription.get("module"));
//        System.out.print("controllerMethodDescription.get(\"remark\"):"+controllerMethodDescription.get("remark"));
//        Date operateDate = beginTimeThreadLocal.get();
            log.setLcreatetime(new Date());

            logServiceI.insertSelective(log);

        }

        String UUID = UUIDUtil.getUUID();
        System.out.println("UUID:"+UUID);
        return "redirect:/office";


    }

//????????????????????????????????????
//    ????????????json????????????????????????@ResponseBody
    @RequestMapping(value = "/listData")
    @ResponseBody
    public List<Office> listData(){
        List<Office> list = Lists.newArrayList();

        List<Office> sourcelist = officeService.findAllOffice();

        Office.sortList(list, sourcelist, Office.getRootId(), true);

        System.out.println("list.get(0).getId():"+list.get(0).getId());

        return list;

    }


    @RequestMapping(value = "delete")

    public String delete(HttpServletRequest request,Log log){

        User user = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = user.getId().toString();

        Date date = new Date();

        System.out.println();

        String id = request.getParameter("id");

        System.out.println("officeService.selectByPrimaryKey(id).getParentId():"+officeService.selectByPrimaryKey(id).getParentId());

        Office office = officeService.getOffice(id);

        office.setDelFlag("1");

        System.out.println("office.getDelFlag():"+office.getDelFlag());
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


        String requestUri = request.getRequestURI();//?????????Uri

        User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

//        String userId = loginUser.getId();

        String roleid = loginUser.getRoleId();



        log.setLid(id1);

        log.setLaction("??????");

        log.setLcreator(userId);

        log.setIurl(requestUri);


//        log.setLip(remoteAddr);
//        log.setLmodule(controllerMethodDescription.get("module"));
        log.setLremark("??????");

        log.setLcreatorrole(roleid);
//        System.out.print("controllerMethodDescription.get(\"module\"):"+controllerMethodDescription.get("module"));
//        System.out.print("controllerMethodDescription.get(\"remark\"):"+controllerMethodDescription.get("remark"));
//        Date operateDate = beginTimeThreadLocal.get();
        log.setLcreatetime(new Date());

        logServiceI.insertSelective(log);

        return "redirect:/office";

    }

    @RequestMapping(value = "updateSort")
    public String updateSort(String[] ids,Integer[] sorts,HttpServletRequest request,Log log){

        System.out.println("ids[0]:"+ids[0]);

        for (int i = 0;i < ids.length;i++){
            Office office = officeService.getOffice(ids[i]);
            office.setSort(sorts[i]);
            officeService.updateoffice(office);
        }


        String id = UUID.randomUUID().toString().replace("-", "");


        String requestUri = request.getRequestURI();//?????????Uri

        User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");

        String userId = loginUser.getId();

        String roleid = loginUser.getRoleId();



        log.setLid(id);

        log.setLaction("??????");

        log.setLcreator(userId);

        log.setIurl(requestUri);


//        log.setLip(remoteAddr);
//        log.setLmodule(controllerMethodDescription.get("module"));
        log.setLremark("????????????");

        log.setLcreatorrole(roleid);
//        System.out.print("controllerMethodDescription.get(\"module\"):"+controllerMethodDescription.get("module"));
//        System.out.print("controllerMethodDescription.get(\"remark\"):"+controllerMethodDescription.get("remark"));
//        Date operateDate = beginTimeThreadLocal.get();
        log.setLcreatetime(new Date());

        logServiceI.insertSelective(log);
        return "redirect:/office" ;
    }


}
