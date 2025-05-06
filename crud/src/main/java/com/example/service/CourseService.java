package com.example.service;

import java.util.List;

import com.example.entity.Course;

public interface CourseService {
    List<Course> getAllCourses();
    Course getCourseById(Long id);
    void saveCourse(Course course);
    void updateCourse(Course course);
}
