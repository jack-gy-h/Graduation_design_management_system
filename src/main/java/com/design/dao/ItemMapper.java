package com.design.dao;

import com.design.entity.SearchItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ItemMapper {

    List<SearchItem> getItemList();

    SearchItem getItemById(@Param("id") Long id);

}
