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

    List<Office> getCollegeByUserIdAndGradeId(String userid, String gradeid);

    List<Office> getMajorByUserIdAndGradeIdAndCollegeid(String userid, String gradeid, String collegeid);

    List<Office> getMajorByUserIdAndGradeIdAndCollegeidAndMajorId(String userid, String gradeid, String collegeid, String majorid);

    List<Office> getUserBymajorIdAndIdentitys(String majorId, String identitys,String usergrade);

    String getOfficeCnNameById(String Id);

//    Office selectById(String i);
}
