<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Courses</title>
</head>
<body>
    <h2>All Courses</h2>

    <a href="${pageContext.request.contextPath}/courses/new">Add New Course</a>
    <br/><br/>

    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Course Title</th>
                <th>Description</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="course" items="${courses}">
                <tr>
                    <td>${course.id}</td>
                    <td>${course.title}</td>
                    <td>${course.description}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/courses/edit/${course.id}">Edit</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
