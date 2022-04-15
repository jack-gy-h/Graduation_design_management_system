package com.design.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.sun.istack.internal.NotNull;
import lombok.Data;

import java.util.Date;
import java.util.List;


@Data
public class Office {

    @TableField(exist = false)
    private Office parent;
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column office.id
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column office.parent_id
     *
     * @mbggenerated
     */
//    private String parentId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column office.parent_ids
     *
     * @mbggenerated
     */
    @NotNull
    private String parentIds;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column office.name
     *
     * @mbggenerated
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column office.sort
     *
     * @mbggenerated
     */
    private Integer sort;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column office.create_by
     *
     * @mbggenerated
     */

    private String createBy;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column office.create_date
     *
     * @mbggenerated
     */
    @TableField(fill = FieldFill.INSERT)
    private Date createDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column office.update_by
     *
     * @mbggenerated
     */
    private String updateBy;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column office.update_date
     *
     * @mbggenerated
     */
    private Date updateDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column office.remarks
     *
     * @mbggenerated
     */
    private String remarks;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column office.del_flag
     *
     * @mbggenerated
     */
    private String delFlag;

    //
//    public Office getOffice() {
//        return office;
//    }
//
//    public void setOffice(Office office) {
//        this.office = office;
//    }
    public Office(String id) {
//        this();
        this.id = id;
    }

    public Office() {
        this.sort = 30;
//        this.isShow = "1";
        this.delFlag = "0";

    }
//
//    public Office getParent() {
//        return parent;
//    }
//
//    public void setParent(Office parent) {
//        this.parent = parent;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method returns the value of the database column office.id
//     *
//     * @return the value of office.id
//     * @mbggenerated
//     */
//    public String getId() {
//        return id;
//    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column office.id
     *
     * @param id the value for office.id
     * @mbggenerated
     */
//    public void setId(String id) {
//        this.id = id == null ? null : id.trim();
//    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column office.parent_id
     *
     * @return the value of office.parent_id
     * @mbggenerated
     */
//    public String getParentId() {
//        return parentId;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method sets the value of the database column office.parent_id
//     *
//     * @param parentId the value for office.parent_id
//     * @mbggenerated
//     */
//    public void setParentId(String parentId) {
//        this.parentId = parentId == null ? null : parentId.trim();
//    }
    public String getParentId() {
        return parent != null && parent.getId() != null ? parent.getId() : "0";
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column office.parent_ids
     *
     * @return the value of office.parent_ids
     * @mbggenerated
     */
//    public String getParentIds() {
//        return parentIds;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method sets the value of the database column office.parent_ids
//     *
//     * @param parentIds the value for office.parent_ids
//     * @mbggenerated
//     */
//    public void setParentIds(String parentIds) {
//        this.parentIds = parentIds == null ? null : parentIds.trim();
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method returns the value of the database column office.name
//     *
//     * @return the value of office.name
//     * @mbggenerated
//     */
//    public String getName() {
//        return name;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method sets the value of the database column office.name
//     *
//     * @param name the value for office.name
//     * @mbggenerated
//     */
//    public void setName(String name) {
//        this.name = name == null ? null : name.trim();
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method returns the value of the database column office.sort
//     *
//     * @return the value of office.sort
//     * @mbggenerated
//     */
//    @NotNull
//    public Integer getSort() {
//        return sort;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method sets the value of the database column office.sort
//     *
//     * @param sort the value for office.sort
//     * @mbggenerated
//     */
//    public void setSort(Integer sort) {
//        this.sort = sort;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method returns the value of the database column office.create_by
//     *
//     * @return the value of office.create_by
//     * @mbggenerated
//     */
//    public String getCreateBy() {
//        return createBy;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method sets the value of the database column office.create_by
//     *
//     * @param createBy the value for office.create_by
//     * @mbggenerated
//     */
//    public void setCreateBy(String createBy) {
//        this.createBy = createBy == null ? null : createBy.trim();
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method returns the value of the database column office.create_date
//     *
//     * @return the value of office.create_date
//     * @mbggenerated
//     */
//    public Date getCreateDate() {
//        return createDate;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method sets the value of the database column office.create_date
//     *
//     * @param createDate the value for office.create_date
//     * @mbggenerated
//     */
//    public void setCreateDate(Date createDate) {
//        this.createDate = createDate;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method returns the value of the database column office.update_by
//     *
//     * @return the value of office.update_by
//     * @mbggenerated
//     */
//    public String getUpdateBy() {
//        return updateBy;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method sets the value of the database column office.update_by
//     *
//     * @param updateBy the value for office.update_by
//     * @mbggenerated
//     */
//    public void setUpdateBy(String updateBy) {
//        this.updateBy = updateBy == null ? null : updateBy.trim();
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method returns the value of the database column office.update_date
//     *
//     * @return the value of office.update_date
//     * @mbggenerated
//     */
//    public Date getUpdateDate() {
//        return updateDate;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method sets the value of the database column office.update_date
//     *
//     * @param updateDate the value for office.update_date
//     * @mbggenerated
//     */
//    public void setUpdateDate(Date updateDate) {
//        this.updateDate = updateDate;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method returns the value of the database column office.remarks
//     *
//     * @return the value of office.remarks
//     * @mbggenerated
//     */
//    public String getRemarks() {
//        return remarks;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method sets the value of the database column office.remarks
//     *
//     * @param remarks the value for office.remarks
//     * @mbggenerated
//     */
//    public void setRemarks(String remarks) {
//        this.remarks = remarks == null ? null : remarks.trim();
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method returns the value of the database column office.del_flag
//     *
//     * @return the value of office.del_flag
//     * @mbggenerated
//     */
//    public String getDelFlag() {
//        return delFlag;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method sets the value of the database column office.del_flag
//     *
//     * @param delFlag the value for office.del_flag
//     * @mbggenerated
//     */
//    public void setDelFlag(String delFlag) {
//        this.delFlag = delFlag == null ? null : delFlag.trim();
//    }

    @JsonIgnore
    public static void sortList(List<Office> list, List<Office> sourcelist, String parentId, boolean cascade) {
        for (int i = 0; i < sourcelist.size(); i++) {
            Office e = sourcelist.get(i);
            if (e.getParent() != null && e.getParent().getId() != null
                    && e.getParent().getId().equals(parentId)) {
                list.add(e);
                if (cascade) {
                    // 判断是否还有子节点, 有则继续获取子节点
                    for (int j = 0; j < sourcelist.size(); j++) {
                        Office child = sourcelist.get(j);
                        if (child.getParent() != null && child.getParent().getId() != null
                                && child.getParent().getId().equals(e.getId())) {
                            sortList(list, sourcelist, e.getId(), true);
                            break;
                        }
                    }
                }
            }
        }
    }

    @JsonIgnore
    public static String getRootId() {
        return "1";
    }
}
