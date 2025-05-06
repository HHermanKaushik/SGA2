package com.example.controller;

import com.example.entity.Student;
import com.example.entity.Course;
import com.example.service.StudentService;
import com.example.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/students")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private CourseService courseService;

    // ✅ Show all students
    @GetMapping
    public String listStudents(Model model) {
        List<Student> students = studentService.getAllStudents();
        model.addAttribute("students", students);
        return "list-students";
    }

    // ✅ Show form to add a new student
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("student", new Student());
        model.addAttribute("courses", courseService.getAllCourses());
        return "add-student";
    }

    // ✅ Handle saving of a new student
    @PostMapping("/save")
    public String saveStudent(@ModelAttribute("student") Student student) {
        studentService.saveStudent(student);
        return "redirect:/students";
    }

    // ✅ Show form to update an existing student
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") Long id, Model model) {
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        model.addAttribute("courses", courseService.getAllCourses());
        return "edit-student";
    }

    // ✅ Handle update submission
    @PostMapping("/update")
    public String updateStudent(@ModelAttribute("student") Student student) {
        studentService.updateStudent(student);
        return "redirect:/students";
    }

    // ✅ Show list of students with their courses (join query result)
    @GetMapping("/with-courses")
    public String showStudentsWithCourses(Model model) {
        List<Student> students = studentService.getAllStudentsWithCourses();
        model.addAttribute("students", students);
        return "students-with-courses";
    }
}
