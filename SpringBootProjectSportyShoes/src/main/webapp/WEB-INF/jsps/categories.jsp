<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Categories</title>
</head>
<body>
    <h1>Categories</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        <%-- Importing the necessary classes --%>
        <%@ page import="java.util.List" %>
        <%@ page import="org.simplilearn.entities.Category" %>

        <% 
        List<Category> categories = (List<Category>) request.getAttribute("categories");
        for (Category category : categories) {
        %>
            <tr>
                <td><%= category.getId() %></td>
                <td><%= category.getName() %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>
