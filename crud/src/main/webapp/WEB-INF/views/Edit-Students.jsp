<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Student</title>
</head>
<body>
    <h2>Edit Student</h2>
    <form action="/students/update/${student.id}" method="post">
        <label>Name:</label><input type="text" name="name" value="${student.name}" /><br/>
        <label>Email:</label><input type="text" name="email" value="${student.email}" /><br/>
        <label>Course:</label>
        <select name="course.id">
            <c:forEach var="course" items="${courses}">
                <option value="${course.id}" ${course.id == student.course.id ? 'selected' : ''}>${course.name}</option>
            </c:forEach>
        </select><br/>
        <input type="submit" value="Update" />
    </form>
    <br/>
    <a href="/students">Back to Student List</a>
</body>
</html>
