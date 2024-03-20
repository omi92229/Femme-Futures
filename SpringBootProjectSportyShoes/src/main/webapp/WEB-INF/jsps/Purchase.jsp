<%@page import="org.simplilearn.entities.CartItem"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Cart</title>
</head>
<body>
    <h1>Your Cart</h1>
    <table border="1">
        <tr>
            <th>Item Name</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Action</th>
        </tr>
        <%-- Loop through the cart items and display details --%>
        <%
            List<CartItem> cartItems = (List<CartItem>) request.getAttribute("cartItems");
            for (CartItem item : cartItems) {
        %>
        <tr>
            <td><%= item.getName() %></td>
            <td><%= item.getQuantity() %></td>
            <td><%= item.getPrice() %></td>
            <td>
                <a href="./removeFromCart/<%= item.getPid() %>">Remove</a>
            </td>
        </tr>
        <%-- End of loop --%>
        <% } %>
    </table>
    <p>Total Cart Value: <%= request.getAttribute("totalCartValue") %></p>
    <a href="./checkout">Proceed to Checkout</a>
</body>
</html>
