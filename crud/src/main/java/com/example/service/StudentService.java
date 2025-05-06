package com.example.service;

import java.util.List;

import com.example.entity.Student;

public interface StudentService {
    List<Student> getAllStudents();
    Student getStudentById(Long id);
    Student saveStudent(Student student);
    Student updateStudent(Student student);
    List<Student> getAllStudentsWithCourses();
}
