<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
         <a href="homePage"><h1>Mayur Ghanghav</h1></a>
    </header>
    <nav>
        <a href="homePage">Home</a>
        <a href="aboutpage">About</a>
        <a href="jobspage">Jobs</a>
        <a href="profilepage">Profile</a>
        <a href="loginpage">Logout</a>
    </nav>
</body>
</html>

<style>
        body {
            font-family: 'Arial', sans-serif;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }
        header a {
            color: white; /* Set the anchor text color */
            text-decoration: none; /* Remove underline */
        }
        nav {
            background-color: #555;
            overflow: hidden;
        }
        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        nav a:hover {
            background-color: #ddd;
            color: black;
        }
       
        /* Media Queries */
        @media screen and (max-width: 600px) {
            .container {
                padding: 10px;
            }
        }
    </style>