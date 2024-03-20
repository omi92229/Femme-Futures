<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>View Users</title>
</head>
<body>
	<h1>View Users</h1>
	<table border="1">
		<tr>
			<th>Username</th>
			<th>Email</th>
			<th>Role</th>
		</tr>
		<c:forEach var="user" items="${users}">
			<tr>
				<td>${user.username}</td>
				<td>${user.email}</td>
				<td>${user.role}</td>
			</tr>
		</c:forEach>
	</table>
	<a href="./adminDashboard">Back to Dashboard</a>
</body>
</html>
