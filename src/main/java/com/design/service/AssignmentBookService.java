package com.design.service;

import com.design.entity.AssignmentBook;

public interface AssignmentBookService {
    AssignmentBook getAssignmentBookById(String assignmentbookid);

    int insertassignmentBook(AssignmentBook assignmentBook);

    void updateAssignmentBook(AssignmentBook assignmentBook);
}
