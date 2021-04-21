package com.design.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.google.common.collect.Lists;
import org.apache.commons.lang3.StringUtils;

import java.util.Date;
import java.util.List;

public class Task {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.id
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.topic
     *
     * @mbggenerated
     */
    private String topic;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.college_id
     *
     * @mbggenerated
     */
    private String collegeId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.major_id
     *
     * @mbggenerated
     */
    private String majorId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.type
     *
     * @mbggenerated
     */
    private String type;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.pattern
     *
     * @mbggenerated
     */
    private String pattern;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.source
     *
     * @mbggenerated
     */
    private String source;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.canBeChosencollegeid
     *
     * @mbggenerated
     */
    private String canbechosencollegeid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.research_direction
     *
     * @mbggenerated
     */
    private String researchDirection;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.brief_introduction
     *
     * @mbggenerated
     */
    private String briefIntroduction;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.basic_requirements
     *
     * @mbggenerated
     */
    private String basicRequirements;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.reference_data
     *
     * @mbggenerated
     */
    private String referenceData;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.teacher_id
     *
     * @mbggenerated
     */
    private String teacherId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.audit_status
     *
     * @mbggenerated
     */
    private String auditStatus;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.grade
     *
     * @mbggenerated
     */
    private String grade;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.assignmentbook_id
     *
     * @mbggenerated
     */
    private String assignmentbookId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.create_date
     *
     * @mbggenerated
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.update_date
     *
     * @mbggenerated
     */
    private Date updateDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column task.del_flag
     *
     * @mbggenerated
     */
    private String delFlag;

    private List<Office> officeList = Lists.newArrayList();

    public Task() {

        this.delFlag = "0";
    }


    private String teachername;

    private String majorname;


    private String auditStatusId;


    private String collegename;


    private String typename;


    private String sourcename;


    private String canbechosentypename;

    private String operator;


    private String operatorRole;

    private String action;

    private String remark;



    private String tcs;

    private String teacherchoosestatus;

    private String teacherchoosestatusId;

    private String studentname;



    private String studentId;


    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createtime;



    private String email;


    public List<Office> getOfficeList() {
        return officeList;
    }

    public void setOfficeList(List<Office> officeList) {
        this.officeList = officeList;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.id
     *
     * @return the value of task.id
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.id
     *
     * @param id the value for task.id
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.topic
     *
     * @return the value of task.topic
     *
     * @mbggenerated
     */
    public String getTopic() {
        return topic;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.topic
     *
     * @param topic the value for task.topic
     *
     * @mbggenerated
     */
    public void setTopic(String topic) {
        this.topic = topic == null ? null : topic.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.college_id
     *
     * @return the value of task.college_id
     *
     * @mbggenerated
     */
    public String getCollegeId() {
        return collegeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.college_id
     *
     * @param collegeId the value for task.college_id
     *
     * @mbggenerated
     */
    public void setCollegeId(String collegeId) {
        this.collegeId = collegeId == null ? null : collegeId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.major_id
     *
     * @return the value of task.major_id
     *
     * @mbggenerated
     */
    public String getMajorId() {
        return majorId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.major_id
     *
     * @param majorId the value for task.major_id
     *
     * @mbggenerated
     */
    public void setMajorId(String majorId) {
        this.majorId = majorId == null ? null : majorId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.type
     *
     * @return the value of task.type
     *
     * @mbggenerated
     */
    public String getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.type
     *
     * @param type the value for task.type
     *
     * @mbggenerated
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.pattern
     *
     * @return the value of task.pattern
     *
     * @mbggenerated
     */
    public String getPattern() {
        return pattern;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.pattern
     *
     * @param pattern the value for task.pattern
     *
     * @mbggenerated
     */
    public void setPattern(String pattern) {
        this.pattern = pattern == null ? null : pattern.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.source
     *
     * @return the value of task.source
     *
     * @mbggenerated
     */
    public String getSource() {
        return source;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.source
     *
     * @param source the value for task.source
     *
     * @mbggenerated
     */
    public void setSource(String source) {
        this.source = source == null ? null : source.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.canBeChosencollegeid
     *
     * @return the value of task.canBeChosencollegeid
     *
     * @mbggenerated
     */
    public String getCanbechosencollegeid() {
        return canbechosencollegeid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.canBeChosencollegeid
     *
     * @param canbechosencollegeid the value for task.canBeChosencollegeid
     *
     * @mbggenerated
     */
    public void setCanbechosencollegeid(String canbechosencollegeid) {
        this.canbechosencollegeid = canbechosencollegeid == null ? null : canbechosencollegeid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.research_direction
     *
     * @return the value of task.research_direction
     *
     * @mbggenerated
     */
    public String getResearchDirection() {
        return researchDirection;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.research_direction
     *
     * @param researchDirection the value for task.research_direction
     *
     * @mbggenerated
     */
    public void setResearchDirection(String researchDirection) {
        this.researchDirection = researchDirection == null ? null : researchDirection.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.brief_introduction
     *
     * @return the value of task.brief_introduction
     *
     * @mbggenerated
     */
    public String getBriefIntroduction() {
        return briefIntroduction;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.brief_introduction
     *
     * @param briefIntroduction the value for task.brief_introduction
     *
     * @mbggenerated
     */
    public void setBriefIntroduction(String briefIntroduction) {
        this.briefIntroduction = briefIntroduction == null ? null : briefIntroduction.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.basic_requirements
     *
     * @return the value of task.basic_requirements
     *
     * @mbggenerated
     */
    public String getBasicRequirements() {
        return basicRequirements;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.basic_requirements
     *
     * @param basicRequirements the value for task.basic_requirements
     *
     * @mbggenerated
     */
    public void setBasicRequirements(String basicRequirements) {
        this.basicRequirements = basicRequirements == null ? null : basicRequirements.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.reference_data
     *
     * @return the value of task.reference_data
     *
     * @mbggenerated
     */
    public String getReferenceData() {
        return referenceData;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.reference_data
     *
     * @param referenceData the value for task.reference_data
     *
     * @mbggenerated
     */
    public void setReferenceData(String referenceData) {
        this.referenceData = referenceData == null ? null : referenceData.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.teacher_id
     *
     * @return the value of task.teacher_id
     *
     * @mbggenerated
     */
    public String getTeacherId() {
        return teacherId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.teacher_id
     *
     * @param teacherId the value for task.teacher_id
     *
     * @mbggenerated
     */
    public void setTeacherId(String teacherId) {
        this.teacherId = teacherId == null ? null : teacherId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.audit_status
     *
     * @return the value of task.audit_status
     *
     * @mbggenerated
     */
    public String getAuditStatus() {
        return auditStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.audit_status
     *
     * @param auditStatus the value for task.audit_status
     *
     * @mbggenerated
     */
    public void setAuditStatus(String auditStatus) {
        this.auditStatus = auditStatus == null ? null : auditStatus.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.grade
     *
     * @return the value of task.grade
     *
     * @mbggenerated
     */
    public String getGrade() {
        return grade;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.grade
     *
     * @param grade the value for task.grade
     *
     * @mbggenerated
     */
    public void setGrade(String grade) {
        this.grade = grade == null ? null : grade.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.assignmentbook_id
     *
     * @return the value of task.assignmentbook_id
     *
     * @mbggenerated
     */
    public String getAssignmentbookId() {
        return assignmentbookId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.assignmentbook_id
     *
     * @param assignmentbookId the value for task.assignmentbook_id
     *
     * @mbggenerated
     */
    public void setAssignmentbookId(String assignmentbookId) {
        this.assignmentbookId = assignmentbookId == null ? null : assignmentbookId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.create_date
     *
     * @return the value of task.create_date
     *
     * @mbggenerated
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.create_date
     *
     * @param createDate the value for task.create_date
     *
     * @mbggenerated
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.update_date
     *
     * @return the value of task.update_date
     *
     * @mbggenerated
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.update_date
     *
     * @param updateDate the value for task.update_date
     *
     * @mbggenerated
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column task.del_flag
     *
     * @return the value of task.del_flag
     *
     * @mbggenerated
     */
    public String getDelFlag() {
        return delFlag;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column task.del_flag
     *
     * @param delFlag the value for task.del_flag
     *
     * @mbggenerated
     */
    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag == null ? null : delFlag.trim();
    }

    public List<String> getOfficeIdList() {
        List<String> officeIdList = Lists.newArrayList();
        for (Office office : officeList) {
            officeIdList.add(office.getId());
        }
        return officeIdList;
    }

    public void setOfficeIdList(List<String> officeIdList) {
        officeList = Lists.newArrayList();
        for (String officeId : officeIdList) {

            Office office = new Office();

            office.setId(officeId);

            officeList.add(office);

        }
    }


    public String getOfficeIds() {
        return StringUtils.join(getOfficeIdList(), ",");
    }

    public void setOfficeIds(String officeIds) {
        officeList = Lists.newArrayList();
        if (officeIds != null) {
            String[] ids = StringUtils.split(officeIds, ",");
            setOfficeIdList(Lists.newArrayList(ids));
        }
    }

    public String getTeachername() {
        return teachername;
    }

    public void setTeachername(String teachername) {
        this.teachername = teachername;
    }

    public String getMajorname() {
        return majorname;
    }

    public void setMajorname(String majorname) {
        this.majorname = majorname;
    }

    public String getAuditStatusId() {
        return auditStatusId;
    }

    public void setAuditStatusId(String auditStatusId) {
        this.auditStatusId = auditStatusId;
    }

    public String getCollegename() {
        return collegename;
    }

    public void setCollegename(String collegename) {
        this.collegename = collegename;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public String getSourcename() {
        return sourcename;
    }

    public void setSourcename(String sourcename) {
        this.sourcename = sourcename;
    }

    public String getCanbechosentypename() {
        return canbechosentypename;
    }

    public void setCanbechosentypename(String canbechosentypename) {
        this.canbechosentypename = canbechosentypename;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getOperatorRole() {
        return operatorRole;
    }

    public void setOperatorRole(String operatorRole) {
        this.operatorRole = operatorRole;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getTcs() {
        return tcs;
    }

    public void setTcs(String tcs) {
        this.tcs = tcs;
    }

    public String getTeacherchoosestatus() {
        return teacherchoosestatus;
    }

    public void setTeacherchoosestatus(String teacherchoosestatus) {
        this.teacherchoosestatus = teacherchoosestatus;
    }

    public String getTeacherchoosestatusId() {
        return teacherchoosestatusId;
    }

    public void setTeacherchoosestatusId(String teacherchoosestatusId) {
        this.teacherchoosestatusId = teacherchoosestatusId;
    }

    public String getStudentname() {
        return studentname;
    }

    public void setStudentname(String studentname) {
        this.studentname = studentname;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


}