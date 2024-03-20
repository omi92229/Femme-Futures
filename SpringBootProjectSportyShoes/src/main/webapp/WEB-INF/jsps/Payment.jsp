<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
</head>
<body>
	<h1>Payment Page</h1>
	<!-- Add a form for payment details -->
	<form action="/processPayment" method="post">
		<!-- Add input fields for card number, expiration date, CVV, etc. -->
		<!-- For simplicity, I'm just adding a single field for demonstration purposes -->
		Card Number: <input type="text" name="cardNumber"><br>
		<!-- Add other fields here as needed -->

		<input type="submit" value="Make Payment">
	</form>
</body>
</html>
