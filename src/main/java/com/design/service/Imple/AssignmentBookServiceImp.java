package com.design.service.Imple;

import com.design.dao.AssignmentBookMapper;
import com.design.entity.AssignmentBook;
import com.design.service.AssignmentBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AssignmentBookServiceImp implements AssignmentBookService {

    @Autowired
    private AssignmentBookMapper assignmentBookMapper;
    @Override
    public AssignmentBook getAssignmentBookById(String assignmentbookid) {
        return assignmentBookMapper.getAssignmentBookById(assignmentbookid);
    }

    @Override
    public int insertassignmentBook(AssignmentBook assignmentBook) {
        return assignmentBookMapper.insertassignmentBook(assignmentBook);
    }

    @Override
    public void updateAssignmentBook(AssignmentBook assignmentBook) {
        assignmentBookMapper.updateAssignmentBook(assignmentBook);

    }
}
