package com.design.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.design.entity.Office;
import org.apache.ibatis.annotations.Param;

public interface OfficeMapper1 extends BaseMapper<Office> {
    String selectNameById(@Param("s") String s);
}
