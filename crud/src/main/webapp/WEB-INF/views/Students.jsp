<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All Students</title>
</head>
<body>
    <h2>Student List</h2>
    <a href="/students/add">Add New Student</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Course</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.email}</td>
                <td>${student.course.name}</td>
                <td>
                    <a href="/students/edit/${student.id}">Edit</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
