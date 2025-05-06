<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Course</title>
</head>
<body>
    <h2>Update Course</h2>

    <form action="${pageContext.request.contextPath}/courses/update/${course.id}" method="post">
        <label>Title:</label>
        <input type="text" name="title" value="${course.title}" required /><br/>

        <label>Description:</label>
        <textarea name="description" required>${course.description}</textarea><br/>

        <input type="submit" value="Update" />
    </form>
</body>
</html>
