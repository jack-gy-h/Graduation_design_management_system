package com.design.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.design.dao.OfficeMapper1;
import com.design.entity.Office;
import com.design.service.OfficeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "/data")
public class DataController {
    @Autowired
    private OfficeService officeService;
    @Autowired
    private OfficeMapper1 officeMapper1;
    @RequestMapping(value = "/UserParentOffice")
    @ResponseBody
    public List<Office> dataUserParentOffice() {

        List<Office> userparentofficeList = officeService.getOfficeParentListById("1");

        for (int i = 0; i < userparentofficeList.size(); i++) {
            System.out.println("userparentofficeList.get(" + i + ").getName():" + userparentofficeList.get(i).getName());
        }



        return userparentofficeList;


    }

    @RequestMapping(value = "/user")
    @ResponseBody
    public List<Office> datauser(String majorId,String identitys,String usergrade) {

        System.out.print("usergrade:"+usergrade);

        List<Office> userList = officeService.getUserBymajorIdAndIdentitys(majorId,identitys,usergrade);

        for (int i = 0; i < userList.size(); i++) {
            System.out.println("userList.get(" + i + ").getName():" + userList.get(i).getName());
        }

        return userList;


    }

    @RequestMapping(value = "/test")
    @ResponseBody
    public List<Office> datatest() {

        System.out.println("CNname:"+ officeService.getOfficeCnNameById1("01461c6822964d7ebda08332e3867fcd"));


        System.out.println("AllList:" + officeMapper1.selectList(null));






        return officeMapper1.selectList(null);
    }


    @RequestMapping(value = "/test1")
    @ResponseBody
    public List<Office> datatest1(@Validated  Office office) {


        office.setId("1212");

//        office.setCreateDate(new Date());

        QueryWrapper<Office> wrapper = new QueryWrapper<Office>();

        wrapper.eq("del_flag","0")
                .gt("sort","150");


        return officeMapper1.selectList(wrapper);




    }

    @RequestMapping(value = "/test2")
    @ResponseBody
    public Page<Office> datatest2(@Validated Office office) {



        QueryWrapper<Office> wrapper = new QueryWrapper<Office>();

        wrapper.eq("del_flag", "0")
                .gt("sort", "150");

        Page<Office> page = new Page<>(1,5);


        return officeMapper1.selectPage(page,wrapper);


    }


}
