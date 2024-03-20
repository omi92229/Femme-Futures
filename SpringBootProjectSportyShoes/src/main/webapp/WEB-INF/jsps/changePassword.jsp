<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<body>
	<h1>Change Password</h1>
	<form method="post" action="./changePassword">
		<label for="oldPassword">Old Password:</label> <input type="password"
			name="oldPassword" required><br> <label
			for="newPassword">New Password:</label> <input type="password"
			name="newPassword" required><br> <input type="submit"
			value="Change Password">
	</form>
</body>
</html>
