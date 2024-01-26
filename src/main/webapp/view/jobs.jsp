<%@page import="com.JobSearch.JobSearchApplication.Model.Jobs"%>
<% List<Jobs> listUsers = (List<Jobs>) request.getAttribute("listUsers"); %>
<%@ page import="java.util.List" %>
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
     
       <div>
        <a href="homePage">Home</a>
        <a href="aboutpage">About</a>
        <a href="jobspage">Jobs</a>
        <a href="profilepage">Profile</a>
        <a href="loginpage">Logout</a>
        </div>
        
    </nav>
        <div class="container">
        <a href="jobpost">Upload Job</a>

        <h1 style="color: #555;">Explore Our Courses</h1>
        
        

        <!-- Display the list of courses -->
		<%for (Jobs job: listUsers){ %>
			<div class="job">
				<h2>Job Title: <%=job.getJob_title() %></h2>
				<p>Company Name: <%=job.getCompany_name() %></p>
				<p>Location: <%=job.getJob_location() %></p>
				<p>Salary Range: <%=job.getSalary_range() %></p>
				<a href="<%=request.getContextPath()%>job<%=job.getId()%>" class="btn btn-success btn-edit">Apply</a>
				
			</div>	
		<% } %>
		
		

	</div>
</body>
</html>

<style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
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
        .container {
            text-align: center;
            padding: 20px;
            
        }
        .job {
        	height: 300px;
        	width: 300px;
            display: inline-block;
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            transition: transform 0.3s;
            
        }
        
        .job:hover {
            transform: scale(1.05);
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            border-radius: 20px;
        }
        input[type="submit"]{
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        .search-bar {
            width: 200px;
            margin-left: auto;
        }
       
        /* Media Queries */
        @media screen and (max-width: 600px) {
            .container {
                padding: 10px;
            }
        }
    </style>