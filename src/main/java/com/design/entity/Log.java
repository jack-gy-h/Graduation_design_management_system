package com.design.entity;

import java.util.Date;

public class Log {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.lId
     *
     * @mbggenerated
     */
    private String lid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.lAction
     *
     * @mbggenerated
     */
    private String laction;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.lCreator
     *
     * @mbggenerated
     */
    private String lcreator;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.IUrl
     *
     * @mbggenerated
     */
    private String iurl;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.lRemark
     *
     * @mbggenerated
     */
    private String lremark;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.lCreatetime
     *
     * @mbggenerated
     */
    private Date lcreatetime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.lId
     *
     * @return the value of log.lId
     *
     * @mbggenerated
     */
    public String getLid() {
        return lid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.lId
     *
     * @param lid the value for log.lId
     *
     * @mbggenerated
     */
    public void setLid(String lid) {
        this.lid = lid == null ? null : lid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.lAction
     *
     * @return the value of log.lAction
     *
     * @mbggenerated
     */
    public String getLaction() {
        return laction;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.lAction
     *
     * @param laction the value for log.lAction
     *
     * @mbggenerated
     */
    public void setLaction(String laction) {
        this.laction = laction == null ? null : laction.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.lCreator
     *
     * @return the value of log.lCreator
     *
     * @mbggenerated
     */
    public String getLcreator() {
        return lcreator;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.lCreator
     *
     * @param lcreator the value for log.lCreator
     *
     * @mbggenerated
     */
    public void setLcreator(String lcreator) {
        this.lcreator = lcreator == null ? null : lcreator.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.IUrl
     *
     * @return the value of log.IUrl
     *
     * @mbggenerated
     */
    public String getIurl() {
        return iurl;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.IUrl
     *
     * @param iurl the value for log.IUrl
     *
     * @mbggenerated
     */
    public void setIurl(String iurl) {
        this.iurl = iurl == null ? null : iurl.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.lRemark
     *
     * @return the value of log.lRemark
     *
     * @mbggenerated
     */
    public String getLremark() {
        return lremark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.lRemark
     *
     * @param lremark the value for log.lRemark
     *
     * @mbggenerated
     */
    public void setLremark(String lremark) {
        this.lremark = lremark == null ? null : lremark.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.lCreatetime
     *
     * @return the value of log.lCreatetime
     *
     * @mbggenerated
     */
    public Date getLcreatetime() {
        return lcreatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.lCreatetime
     *
     * @param lcreatetime the value for log.lCreatetime
     *
     * @mbggenerated
     */
    public void setLcreatetime(Date lcreatetime) {
        this.lcreatetime = lcreatetime;
    }
}