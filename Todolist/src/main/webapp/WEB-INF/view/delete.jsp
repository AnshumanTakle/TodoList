<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Task</title>
</head>
<body>
    <p>Are you sure you want to delete the task?</p>
    <form action="delete" method="post">
        <input type="hidden" name="index" value="<%= request.getParameter("index") %>">
        <button type="submit">Delete</button>
    </form>
    <br>
    <a href="home.jsp">Back to Home</a>
</body>
</html>
