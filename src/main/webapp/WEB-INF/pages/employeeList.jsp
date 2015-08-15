<%--
  User: Basanta Thapa
  --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employees List</title>
<!-- Bootstrap CSS -->
<link
	href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />"
	rel="stylesheet"
	integrity="sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
	crossorigin="anonymous">
<style type="text/css">
.myrow-container {
	margin: 20px;
}
</style>
</head>
<body class=".container-fluid">
	<div class="container myrow-container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">
					<div align="left">
						<b>Employees List</b>
					</div>
					<div align="right">
						<a href="createEmployee">Add New Employee</a>
					</div>
				</h3>
			</div>
			<div class="panel-body">
				<c:if test="${empty employeeList}">
                	There are no Employees
            	</c:if>
				<c:if test="${not empty employeeList}">
					<table class="table table-hover table-bordered">
						<thead style="background-color: #bce8f1;">
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Age</th>
								<th>Salary</th>
								<th>Edit</th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${employeeList}" var="emp">
								<tr>
									<td>${emp.id}</td>
									<td>${emp.name}</td>
									<td>${emp.age}</td>
									<td>${emp.salary}</td>
									<td>${emp.id}</td>
									<td>${emp.id}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
			</div>
		</div>
		<script
			src="<c:url value="https://code.jquery.com/jquery-2.1.4.min.js"/>"></script>
		<script
			src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"/>"
			integrity="sha256-Sk3nkD6mLTMOF0EOpNtsIry+s1CsaqQC1rVLTAy+0yc= sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ=="
			crossorigin="anonymous"></script>
		<script src="<c:url value="/resources/js/employee.js"/>"></script>
</body>
</html>