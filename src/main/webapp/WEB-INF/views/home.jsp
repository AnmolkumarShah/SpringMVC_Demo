<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>TODO App</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<div class="display-3 text-center ">TODO</div>
		<div class="row mt-2">
			<%@include file="optionInclude.jsp"%>
			<div class="col-md-10  text-center">

				<c:if test="${page == 'add' }">

					<form:form action="saveTodo" modelAttribute="todo" method="post">

						<div class="form-group">
							<form:input path="title" cssClass="form-control"
								placeholder="Enter Title" />
						</div>
						<div class="form-group mt-2">
							<form:textarea path="content" cssClass="form-control"
								placeholder="Enter Content" />
						</div>

						<div class="row justify-content-start">
							<div class="mt-2">
								<button class="btn btn-outline-primary">Submit</button>
							</div>
						</div>
			</div>


			</form:form>

			</c:if>

			<c:if test="${page == 'home' }">
				<c:out value="add"></c:out>
			</c:if>

		</div>
	</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>