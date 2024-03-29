package com.design.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.sun.istack.internal.NotNull;

import java.util.Date;
import java.util.List;

public class Menu {

//    private String rootId;
    private Menu parent;
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.id
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.parent_id
     *
     * @mbggenerated
     */
//    private String parentId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.parent_ids
     *
     * @mbggenerated
     */
    private String parentIds;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.name
     *
     * @mbggenerated
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.sort
     *
     * @mbggenerated
     */
    private Integer sort;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.href
     *
     * @mbggenerated
     */
    private String href;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.target
     *
     * @mbggenerated
     */
    private String target;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.icon
     *
     * @mbggenerated
     */
    private String icon;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.is_show
     *
     * @mbggenerated
     */
    private String isShow;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.permission
     *
     * @mbggenerated
     */
    private String permission;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.create_by
     *
     * @mbggenerated
     */
    private String createBy;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.create_date
     *
     * @mbggenerated
     */
    private Date createDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.update_by
     *
     * @mbggenerated
     */
    private String updateBy;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.update_date
     *
     * @mbggenerated
     */
    private Date updateDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.remarks
     *
     * @mbggenerated
     */
    private String remarks;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.del_flag
     *
     * @mbggenerated
     */
    private String delFlag;

    public Menu(String id) {
//        this();
        this.id = id;
    }

    public Menu() {
        this.sort = 30;
        this.isShow = "1";
        this.delFlag = "0";

    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.id
     *
     * @return the value of menu.id
     *
     * @mbggenerated
     */

    @NotNull
    public Menu getParent() {
        return parent;
    }

    public void setParent(Menu parent) {
        this.parent = parent;
    }

    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.id
     *
     * @param id the value for menu.id
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

//    /**
//     * This method was generated by MyBatis Generator.
//     * This method returns the value of the database column menu.parent_id
//     *
//     * @return the value of menu.parent_id
//     *
//     * @mbggenerated
//     */
//    public String getParentId() {
//        return parentId;
//    }
//
//    /**
//     * This method was generated by MyBatis Generator.
//     * This method sets the value of the database column menu.parent_id
//     *
//     * @param parentId the value for menu.parent_id
//     *
//     * @mbggenerated
//     */
//    public void setParentId(String parentId) {
//        this.parentId = parentId == null ? null : parentId.trim();
//    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.parent_ids
     *
     * @return the value of menu.parent_ids
     *
     * @mbggenerated
     */
    public String getParentIds() {
        return parentIds;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.parent_ids
     *
     * @param parentIds the value for menu.parent_ids
     *
     * @mbggenerated
     */
    public void setParentIds(String parentIds) {
        this.parentIds = parentIds == null ? null : parentIds.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.name
     *
     * @return the value of menu.name
     *
     * @mbggenerated
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.name
     *
     * @param name the value for menu.name
     *
     * @mbggenerated
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.sort
     *
     * @return the value of menu.sort
     *
     * @mbggenerated
     */
    @NotNull
    public Integer getSort() {
        return sort;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.sort
     *
     * @param sort the value for menu.sort
     *
     * @mbggenerated
     */
    public void setSort(Integer sort) {
        this.sort = sort;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.href
     *
     * @return the value of menu.href
     *
     * @mbggenerated
     */
    public String getHref() {
        return href;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.href
     *
     * @param href the value for menu.href
     *
     * @mbggenerated
     */
    public void setHref(String href) {
        this.href = href == null ? null : href.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.target
     *
     * @return the value of menu.target
     *
     * @mbggenerated
     */
    public String getTarget() {
        return target;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.target
     *
     * @param target the value for menu.target
     *
     * @mbggenerated
     */
    public void setTarget(String target) {
        this.target = target == null ? null : target.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.icon
     *
     * @return the value of menu.icon
     *
     * @mbggenerated
     */
    public String getIcon() {
        return icon;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.icon
     *
     * @param icon the value for menu.icon
     *
     * @mbggenerated
     */
    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.is_show
     *
     * @return the value of menu.is_show
     *
     * @mbggenerated
     */
    public String getIsShow() {
        return isShow;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.is_show
     *
     * @param isShow the value for menu.is_show
     *
     * @mbggenerated
     */
    public void setIsShow(String isShow) {
        this.isShow = isShow == null ? null : isShow.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.permission
     *
     * @return the value of menu.permission
     *
     * @mbggenerated
     */
    public String getPermission() {
        return permission;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.permission
     *
     * @param permission the value for menu.permission
     *
     * @mbggenerated
     */
    public void setPermission(String permission) {
        this.permission = permission == null ? null : permission.trim();
    }


    public String getParentId() {
        return parent != null && parent.getId() != null ? parent.getId() : "0";
    }

    @JsonIgnore
    public static void sortList(List<Menu> list, List<Menu> sourcelist, String parentId, boolean cascade) {
        for (int i = 0; i < sourcelist.size(); i++) {
            Menu e = sourcelist.get(i);
//            找到父id为parentId的菜单
            if (e.getParent() != null && e.getParent().getId() != null
                    && e.getParent().getId().equals(parentId)) {
                list.add(e);
                if (cascade) {
                    // 判断是否还有子节点, 有则继续获取子节点
//                    新做一个列表，让上一个parentId作为父id继续获取字节点
                    for (int j = 0; j < sourcelist.size(); j++) {
                        Menu child = sourcelist.get(j);
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

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.create_by
     *
     * @return the value of menu.create_by
     *
     * @mbggenerated
     */
    public String getCreateBy() {
        return createBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.create_by
     *
     * @param createBy the value for menu.create_by
     *
     * @mbggenerated
     */
    public void setCreateBy(String createBy) {
        this.createBy = createBy == null ? null : createBy.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.create_date
     *
     * @return the value of menu.create_date
     *
     * @mbggenerated
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.create_date
     *
     * @param createDate the value for menu.create_date
     *
     * @mbggenerated
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.update_by
     *
     * @return the value of menu.update_by
     *
     * @mbggenerated
     */
    public String getUpdateBy() {
        return updateBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.update_by
     *
     * @param updateBy the value for menu.update_by
     *
     * @mbggenerated
     */
    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy == null ? null : updateBy.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.update_date
     *
     * @return the value of menu.update_date
     *
     * @mbggenerated
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.update_date
     *
     * @param updateDate the value for menu.update_date
     *
     * @mbggenerated
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.remarks
     *
     * @return the value of menu.remarks
     *
     * @mbggenerated
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.remarks
     *
     * @param remarks the value for menu.remarks
     *
     * @mbggenerated
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.del_flag
     *
     * @return the value of menu.del_flag
     *
     * @mbggenerated
     */
    public String getDelFlag() {
        return delFlag;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.del_flag
     *
     * @param delFlag the value for menu.del_flag
     *
     * @mbggenerated
     */
    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag == null ? null : delFlag.trim();
    }


}