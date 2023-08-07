<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Task</title>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">TodoApp</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="add">Add</a></li>


				</ul>

			</div>
		</div>
	</nav>
    <h2>Edit Task</h2>
    
    <form action="${pageContext.request.contextPath}/updateTask" method="post">
        <input type="hidden" name="id" value="${task.id}">
        
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="${task.title}" required><br>
        
        <label for="description">Description:</label>
        <textarea id="description" name="description" rows="4" cols="50" required>${task.description}</textarea><br>
        
        <label for="dueDate">Due Date:</label>
        <input type="date" id="dueDate" name="dueDate" value="${task.dueDate}" required><br>
        
        <input type="submit" value="Update Task">
    </form>
    
    <br>
    <a href="${pageContext.request.contextPath}/">Back to Task List</a>
    <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
</html>
