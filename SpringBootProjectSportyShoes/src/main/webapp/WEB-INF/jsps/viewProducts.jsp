<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="ISO-8859-1">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Products - FF</title>
    <link rel="icon" href="./logo/femme futures-logos_black (1).png">
<style type="text/css">
body{
    margin: 0;
    padding: 0;
    font-family: Arial, Helvetica, sans-serif;
}

header{
    /* background-color: pink; */
    background-image: url("./images/pinkskysky.jpg");
background-size: 100% ;
    color: black;
    padding: 10px 0;
    text-align: center;
    position: fixed;
    z-index: 1;
    width: 100%;
    
}

nav{
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    
}

.logo img{
    height: 100px;
    width: auto;
    padding: 0 20px;
    
}

.project-name h1{
    font-size: 50px;
    padding: 0 20px;
    margin: 0;
    font-family: Georgia, 'Times New Roman', Times, serif;
}

ul.menu{
    list-style: none;
    display: flex;
    
}

ul.menu li{
    margin-right: 60px;
    font-weight: bold;
    color: brown;
justify-content: center;
}

ul.menu li:last-child{
    margin-right: 0;
}

ul.menu li a{
    text-decoration: none;
    color: brown;
}

@media screen  and (max-width: 768px) {
    header{
        padding: 10px;
    }

    .project-name{
        font-size: 20px;
    }

    ul.menu{
        flex-direction: column;
        align-items: flex-start;
        background-color: pink;
        padding: 10px 20px 10px 20px;
    }

    ul.menu li{
        margin-right: 0;
        margin-bottom: 10px;
        text-align: center;
    }

}


/* style.css */

body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
    text-align: center;
}

h1 {
    color: #333;
}

table {
    width: 90%;
    margin: 20px auto;
    border-collapse: collapse;
    
}

th, td {
    padding: 10px;
    border: 1px solid magenta;
}

th {
    background-color: pink;
}

img {
    max-width: 200px;
    height: 200px;
    display: block;
    margin: 0 auto;
    align-items: center;
}

#top{
    color: orangered;
}
button {
    background-color: yellow;
    padding: 10px;
    border: none;
    border-radius: 50%;
    color: blueviolet;
    text-decoration: none;
    font-weight: bolder;
}

button:hover{
    background-color: pink;
}

</style>
</head>
<body>
    <header>
        <nav>
            <div class="logo">
                <img src="./logo/femme futures-logos_transparent (1).png" alt="Project Logo">
            </div>
            <div class="project-name">
                <h1>Femme Futures</h1>
            </div>
             </form>
            </div>
            <ul class="menu">
                <li><a href="./">Home</a></li>
                <li><a href="./showSignUp">Didn't Signed up? (Sign Up Now)</a></li>
                <li><a href="./showLogin">Already Signed up? (Login)</a></li>
                
            </ul>
        </nav>
    </header>
    <br><br><br><br><br><br> <br><br><br><br><br><br><br>
    <h1 id="top">View Products</h1>
    <br><br><br><br>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Price</th>
            <th>Image</th>
        </tr>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td><img style="width: 150px; height: 150px" src="${product.imageUrl}" alt="${product.name}" /></td>
            </tr>

        </c:forEach>
    </table>
    <button>
        <a href="#top" style="text-decoration: none; padding: 10px;
        border: none;
        border-radius: 50%;
        color: blueviolet;
        text-decoration: none;
        font-weight: bolder;">Top of Page</a> 
    </button>
</body>
</html>
