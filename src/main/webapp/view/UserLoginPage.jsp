<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="login-container">
        <center>
            <marquee>
                <font color="Brown">******** Developed By Mayur Ghanghav ********</font>
            </marquee>
            
            <h1><font color="Brown">Login Page</font></h1>
            
            <%
            if (request.getAttribute("msg") != null) {
                out.print(request.getAttribute("msg"));
            }
            %>
            
            <form action="login" method="post">
                <label for="user_name">Username</label>
                <input type="text" name="user_name" id="user_name" required><br>
                
                <label for="user_password">Password</label>
                <input type="password" name="user_password" id="user_password" required><br>
                
                <div class="button-container">
                    <input type="submit" value="Login">
                    <input type="reset" value="Reset"><br>
                </div>
                
                <div class="link-container">
                    <a href="createaccountpage">Create Account</a>
                </div>
            </form>
        </center>
    </div>
</body>
</html>
<style>
body {
    
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    margin: 0;
    padding: 0;
    font-family: 'Arial', sans-serif;
}

center {
    text-align: center;
}

a {
    color: white;
    text-decoration: none;
}

a:hover {
    color: #ddd;
}

.login-container {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    border-radius: 8px;
    max-width: 400px;
    margin: 50px auto;
}

h1 font {
    color: brown;
}

form {
    text-align: left;
}

label {
    display: block;
    margin-bottom: 8px;
    color: #555;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.button-container {
    text-align: center;
    margin-top: 20px;
}

input[type="submit"],
input[type="reset"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    margin: 8px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover,
input[type="reset"]:hover {
    background-color: #45a049;
}

.link-container {
    text-align: center;
    margin-top: 20px;
}

.link-container a {
    color: #3498db;
}

/* Responsive styles */
@media (max-width: 600px) {
    .login-container {
        max-width: 100%;
        margin: 20px;
    }
}
</style>
