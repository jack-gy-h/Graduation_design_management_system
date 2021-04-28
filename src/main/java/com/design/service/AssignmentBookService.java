package com.design.service;

import com.design.entity.AssignmentBook;

import java.util.List;

public interface AssignmentBookService {
    AssignmentBook getAssignmentBookById(String assignmentbookid);

    int insertassignmentBook(AssignmentBook assignmentBook);

    void updateAssignmentBook(AssignmentBook assignmentBook);

    List<AssignmentBook> getAssignmentBookByUser(String userId);

    List<AssignmentBook> getAssignmentBookListById(String assignmentbookid);
}
