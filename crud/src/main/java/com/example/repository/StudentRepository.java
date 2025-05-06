package com.example.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {

    List<Student> findByCourses_Id(Long courseId);

    List<Student> findAll();
}
