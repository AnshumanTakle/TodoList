<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"%>


<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
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
	<div style="margin-top: 20px;">
		<table border="1">
			<tr>
			    <th>ID &nbsp;&nbsp;&nbsp;</th>
				<th>Title &nbsp;&nbsp;&nbsp;</th>
				<th>Description &nbsp;&nbsp;&nbsp;</th>
				<th>DueDate &nbsp;&nbsp;&nbsp;</th>
			</tr>
			<c:forEach items="${home}" var="task">
				<tr>
					<td><c:out value=" ${task.id}" />&nbsp;&nbsp;&nbsp;</td>
					<td><c:out value=" ${task.title}" />&nbsp;&nbsp;&nbsp;</td>
					<td><c:out value="${task.description}" />&nbsp;&nbsp;&nbsp;</td>
					<td><c:out value="${task.dueDate}" /><br>&nbsp;&nbsp;&nbsp;</td>
					<p style="margin-top: 5px;"></p>
					<td><a
						href="${pageContext.request.contextPath}/editTask?id=${task.id}">Edit</a>
						<a
						href="${pageContext.request.contextPath}/deleteTask?id=${task.id}">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
</html>