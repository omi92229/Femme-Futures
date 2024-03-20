<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Now - FF</title>
    <link rel="icon" href="./logo/femme futures-logos_black (1).png">
<style type="text/css">
body{
    margin: 0;
    padding: 0;
    font-family: Arial, Helvetica, sans-serif;
}

header{
    /* background-color: pink; */
    background-image: url("./images/nava.jpg");
background-size: 100% ;
    color: black;
    padding: 10px 0;
    text-align: center;
    
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


/* signup.css */

body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

form {
    max-width: 700px;
    height: auto;
    margin: 50px auto;
    font-weight: bolder;
    padding: 50px;
    background-image: url("./images/auramix.jpg");
    background-size: 100%;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

input {
    width: 100%;
    padding: 10px;
    margin: 8px 8px;
    box-sizing: border-box;
}

select {
    width: 100%;
    padding: 10px;
    margin: 8px ;
    box-sizing: border-box;
    font-size: large;
}

input[type="submit"] {
    background-color: #4caf50;
    color: white;
    cursor: pointer;
}

input[type="text"]{
font-size:20px;
}

input[type="email"]{
font-size:20px;
}

input[type="password"]{
font-size:20px;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

p {
    text-align: center;
    margin-top: 20px;
    font-weight: bold;
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
                <li><a href="./showLogin">Already Signed up? (Login)</a></li>
                
            </ul>
        </nav>
    </header>
    <form action="./signUp" method="post">
		Username: <input type="text" name="username"><br>
		Password: <input type="password" name="password"><br>
		Email:<input type="email" name="email"><br>
		 <select name="role">
            <option value="Customer">Customer</option>
            <option value="Admin">Admin</option>
        </select><br>
		 <input
			type="submit" value="Submit">

	</form>
	<p style="color: red">${msg }</p>

</body>
</html>