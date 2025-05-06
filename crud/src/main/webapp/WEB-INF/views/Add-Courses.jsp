<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Course</title>
</head>
<body>
    <h2>Add New Course</h2>

    <form action="${pageContext.request.contextPath}/courses" method="post">
        <label>Title:</label>
        <input type="text" name="title" required /><br/>

        <label>Description:</label>
        <textarea name="description" required></textarea><br/>

        <input type="submit" value="Save" />
    </form>
</body>
</html>
