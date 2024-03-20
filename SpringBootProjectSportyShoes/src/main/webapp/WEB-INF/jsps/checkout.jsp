<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Checkout</title>
</head>
<body>
    <h1>Checkout</h1>
    <table border="1">
        <tr>
            <th>Item Name</th>
            <th>Quantity</th>
            <th>Price</th>
        </tr>
        <%-- Importing the necessary classes --%>
        <%@ page import="java.util.List" %>
        <%@ page import="org.simplilearn.entities.CartItem" %>

        <% 
        List<CartItem> cartItems = (List<CartItem>) request.getAttribute("cartItems");
        for (CartItem item : cartItems) {
        %>
            <tr>
                <td><%= item.getName() %></td>
                <td><%= item.getQuantity() %></td>
                <td><%= item.getPrice() %></td>
            </tr>
        <% } %>
    </table>
    <p>Total Cart Value: <%= request.getAttribute("totalCartValue") %></p>
    <a href="./makePayment">Proceed to Payment</a> <!-- Update the URL to point to "makePayment" -->
    <!-- Redirect to payment success page if checkout success attribute is set -->
    <% if (session.getAttribute("checkoutSuccess") != null) { %>
        <script>
            window.location.href = "./checkout_success";
        </script>
    <% } %>
</body>
</html>
