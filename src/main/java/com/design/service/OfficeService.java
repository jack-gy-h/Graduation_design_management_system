package com.design.service;

import com.design.entity.Office;

import java.util.List;

public interface OfficeService {

    List<Office> findAllOffice();

    Office getOffice(String id);

    int insertoffice(Office office);

    int updateoffice(Office office);

    Office selectByPrimaryKey(String id);

    List<Office> getOfficeParentListById(String id);

    List<Office> getMajorById(String code);

//    Office selectById(String i);
}
