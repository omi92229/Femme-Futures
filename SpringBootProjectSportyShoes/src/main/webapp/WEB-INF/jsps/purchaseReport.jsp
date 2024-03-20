<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Purchase Report</title>
</head>
<body>
	<h1>Purchase Report</h1>

	<form method="post" action="/purchaseReport">
		<label for="startDate">Start Date:</label> <input type="date"
			id="startDate" name="startDate" required> <label
			for="endDate">End Date:</label> <input type="date" id="endDate"
			name="endDate" required> <label for="categoryId">Category:</label>
		<select id="categoryId" name="categoryId" required>
			<!-- Populate the options with available categories from the database -->
			<c:forEach var="category" items="${categories}">
				<option value="${category.id}">${category.name}</option>
			</c:forEach>
		</select>

		<button type="submit">Filter</button>
	</form>

	<!-- Display the filtered purchase report -->
	<table>
		<tr>
			<th>Purchase Date</th>
			<th>Category</th>
			<th>Total Amount</th>
		</tr>
		<c:forEach var="purchase" items="${purchases}">
			<tr>
				<td>${purchase.purchaseDate}</td>
				<td>${purchase.category.name}</td>
				<td>${purchase.totalAmount}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
