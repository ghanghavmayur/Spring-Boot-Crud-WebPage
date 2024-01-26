<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Details</title>
</head>
<body>
    <header>
         <a href="homePage"><h1>Mayur Ghanghav</h1></a>
    </header>
    <nav>
        <!-- Navigation Bar -->
        <div>
            <a href="homePage">Home</a>
            <a href="aboutpage">About</a>
            <a href="jobspage">Jobs</a>
            <a href="profilepage">Profile</a>
            <a href="loginpage">Logout</a>
        </div>
    </nav>
    <div class="container">

        <div class="job">
            <div class="label">Job Title:</div>
            <div class="value">${job.job_title}</div>

            <div class="label">Company Name:</div>
            <div class="value">${job.company_name}</div>

            <div class="label">Location:</div>
            <div class="value">${job.job_location}</div>

            <div class="label">Job Type:</div>
            <div class="value">${job.job_type}</div>

            <div class="label">Job Description:</div>
            <div class="value">${job.job_description}</div>

            <div class="label">Qualifications:</div>
            <div class="value">${job.qualifications}</div>

            <div class="label">Salary Range:</div>
            <div class="value">${job.salary_range}</div>

            <div class="label">Benefits:</div>
            <div class="value">${job.benefits}</div>
            
            <!-- 
            
        <div style="text-align: center;"><h2>"${job.id}"</h2></div>
		<div style="text-align: center;"><h2>"${job.company_name}"</h2></div>
		<div style="text-align: center;"><h2>"${job.job_location}"</h2></div>
		<div style="text-align: center;"><h2>"${job.job_type}"</h2></div>
		<div style="text-align: center;"><h2>"${job.job_description}"</h2></div>
		<div style="text-align: center;"><h2>"${job.qualifications}"</h2></div>
		<div style="text-align: center;"><h2>"${job.salary_range}"</h2></div>
		<div style="text-align: center;"><h2>"${job.benefits}"</h2></div>
		
		
		 -->
            
             <form action="enrollJob" method="post">
                <input type="hidden" name="jobId" value="${job.id}">
                <input type="submit" value="Apply" class="apply-button">
            </form>
        </div>
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
            display: inline-block;
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            transition: transform 0.3s;
        }
        
         .label {
            font-weight: bold;
            margin-bottom: 5px;
            color: #333; /* Label text color */
        }
        .value {
            margin-bottom: 15px;
        }
        
          .apply-button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px; /* Adjust the font size */
    }
    </style>
