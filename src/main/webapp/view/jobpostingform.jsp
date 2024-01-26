<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
        <marquee>
            <font color="Brown">******** Develoed By Mayur Ghanghav ********</font>
        </marquee>

        <h1><font color="Brown">Job Posting Page</font></h1>

       
        
        
         <form action="<%= request.getContextPath() %>/save" method="post" style="max-width: 500px; margin: 0 auto;">
            <div class="border border-secondary rounded p-3">
            
           		 <div class="form-group">
                    <label>Job Id</label>
                    <input type="text" name="id" value="${job.id}">
                </div>
                <div class="form-group">
                    <label>Job Title</label>
                    <input type="text" name="job_title" value="${job.job_title}">
                </div>

                <div class="form-group">
                    <label>Company Name</label>
                    <input type="text" name="company_name" value="${job.company_name}">
                </div>

                <div class="form-group">
                    <label>Job Location</label>
                    <input type="text" name="job_location" value="${job.job_location}">
                </div>
                
                <div class="form-group">
                    <label>Job Type</label>
                    <input type="text" name="job_type" value="${job.job_type}">
                </div>
                
                <div class="form-group">
                    <label>Job Description</label>
                    <input type="text" name="job_description" value="${job.job_description}">
                </div>
                
                <div class="form-group">
                    <label>Qualifications</label>
                    <input type="text" name="qualifications" value="${job.qualifications}">
                </div>
                
                <div class="form-group">
                    <label>Salaray Range</label>
                    <input type="text" name="salary_range" value="${job.salary_range}">
                </div>
                
                <div class="form-group">
                    <label>Benefits</label>
                    <input type="text" name="benefits" value="${job.benefits}">
                </div>
                
                

                <div class="text-center">
                    <button type="submit" class="btn">Save</button>
                    <button type="button" class="btn btn-secondary" onclick="cancelForm()">Cancel</button>
                </div>
            </div>
        </form>
    
    </center>
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
            color: #555;
        }

        a {
            color: #3498db;
            text-decoration: none;
        }

        a:hover {
            color: #555;
        }

        h1 {
            color: brown;
        }

        form {
            max-width: 400px;
            width: 80%; /* Adjusted width for responsiveness */
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }

        label {
            display: block;
            margin: 8px 0;
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

        .input-container a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #3498db;
        }

        /* Responsive styles */
        @media (max-width: 600px) {
            form {
                max-width: 100%; /* Adjusted width for smaller screens */
           		margin: 20px;
            }
        }
    </style>