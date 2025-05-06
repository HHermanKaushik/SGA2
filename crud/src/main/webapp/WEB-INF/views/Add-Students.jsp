<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add Student</title>
</head>
<body>
    <h2>Add Student</h2>
    <form action="/students/save" method="post">
        <label>Name:</label><input type="text" name="name" /><br/>
        <label>Email:</label><input type="text" name="email" /><br/>
        <label>Course:</label>
        <select name="course.id">
            <c:forEach var="course" items="${courses}">
                <option value="${course.id}">${course.name}</option>
            </c:forEach>
        </select><br/>
        <input type="submit" value="Save" />
    </form>
    <br/>
    <a href="/students">Back to Student List</a>
</body>
</html>
