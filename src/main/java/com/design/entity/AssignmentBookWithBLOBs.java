package com.design.entity;

public class AssignmentBookWithBLOBs extends AssignmentBook {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column assignment_book.Content_requirements
     *
     * @mbggenerated
     */
    private String contentRequirements;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column assignment_book.scheduling
     *
     * @mbggenerated
     */
    private String scheduling;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column assignment_book.references
     *
     * @mbggenerated
     */
    private String references;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column assignment_book.audit_status
     *
     * @mbggenerated
     */
    private String auditStatus;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column assignment_book.Content_requirements
     *
     * @return the value of assignment_book.Content_requirements
     *
     * @mbggenerated
     */
    public String getContentRequirements() {
        return contentRequirements;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column assignment_book.Content_requirements
     *
     * @param contentRequirements the value for assignment_book.Content_requirements
     *
     * @mbggenerated
     */
    public void setContentRequirements(String contentRequirements) {
        this.contentRequirements = contentRequirements == null ? null : contentRequirements.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column assignment_book.scheduling
     *
     * @return the value of assignment_book.scheduling
     *
     * @mbggenerated
     */
    public String getScheduling() {
        return scheduling;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column assignment_book.scheduling
     *
     * @param scheduling the value for assignment_book.scheduling
     *
     * @mbggenerated
     */
    public void setScheduling(String scheduling) {
        this.scheduling = scheduling == null ? null : scheduling.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column assignment_book.references
     *
     * @return the value of assignment_book.references
     *
     * @mbggenerated
     */
    public String getReferences() {
        return references;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column assignment_book.references
     *
     * @param references the value for assignment_book.references
     *
     * @mbggenerated
     */
    public void setReferences(String references) {
        this.references = references == null ? null : references.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column assignment_book.audit_status
     *
     * @return the value of assignment_book.audit_status
     *
     * @mbggenerated
     */
    public String getAuditStatus() {
        return auditStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column assignment_book.audit_status
     *
     * @param auditStatus the value for assignment_book.audit_status
     *
     * @mbggenerated
     */
    public void setAuditStatus(String auditStatus) {
        this.auditStatus = auditStatus == null ? null : auditStatus.trim();
    }
}