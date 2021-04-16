package com.design.dao;

import com.design.entity.Task;
import com.design.entity.TaskExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TaskMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table task
     *
     * @mbggenerated
     */
    int countByExample(TaskExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table task
     *
     * @mbggenerated
     */
    int deleteByExample(TaskExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table task
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table task
     *
     * @mbggenerated
     */
    int insert(Task record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table task
     *
     * @mbggenerated
     */
    int insertSelective(Task record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table task
     *
     * @mbggenerated
     */
    List<Task> selectByExample(TaskExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table task
     *
     * @mbggenerated
     */
    Task selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table task
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") Task record, @Param("example") TaskExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table task
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") Task record, @Param("example") TaskExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table task
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Task record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table task
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Task record);

    Task getTaskById(String id);

    void deleteTaskOffice(Task task);

    void insertTaskOffice(Task task);

    List<Task> getdoubletaskListByPageAndRows(@Param("page")int page, @Param("rows")int rows, @Param("grade") String grade, @Param("userId")String userId, @Param("office")String office, @Param("topic") String topic, @Param("teacher") String teacher, @Param("teacheridentitynumber")String teacheridentitynumber, @Param("type")String type, @Param("source")String source);

    int getdoubletaskListCountByPageAndRows(@Param("page") int page, @Param("rows") int rows, @Param("grade") String grade, @Param("userId") String userId, @Param("office") String office, @Param("topic") String topic, @Param("teacher") String teacher, @Param("teacheridentitynumber") String teacheridentitynumber, @Param("type") String type, @Param("source") String source);

    Task getTaskTotalInformationById(String id);

    List<Task> getdoubletaskListByPageAndRowsForAuditDouble(@Param("page")int page, @Param("rows")int rows, @Param("grade")String grade, @Param("majorid")String majorid);

    int getdoubletaskListCountByPageAndRowsForAuditDouble(@Param("page")int page, @Param("rows")int rows, @Param("grade") String grade, @Param("majorid") String majorid);

    List<Task> getstudentdoubletaskListByPageAndRows(@Param("page") int page, @Param("rows") int rows, @Param("grade") String grade, @Param("majorid") String majorid, @Param("office") String office, @Param("topic") String topic, @Param("teacher") String teacher, @Param("teacheridentitynumber") String teacheridentitynumber, @Param("type") String type, @Param("source") String source);

    int getstudentdoubletaskListCountByPageAndRows(@Param("page") int page, @Param("rows") int rows, @Param("grade") String grade, @Param("majorid") String majorid, @Param("office") String office, @Param("topic") String topic, @Param("teacher") String teacher, @Param("teacheridentitynumber") String teacheridentitynumber, @Param("type") String type, @Param("source") String source);


//    List<Task> getdoubletaskListByPageAndRows(@Param("page")int page, @Param("rows")int rows, @Param("grade")String grade, @Param("majorid")String majorid);
}