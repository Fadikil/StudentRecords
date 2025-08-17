<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Management</title>
    <style>
        a {
            background-color: #2c3e50;
            color: #fff;
            font-size:15px;
            padding:8px 12px;
            border-radius:3px;
            text-decoration:none;
            display:inline-block;
            margin-top:15px;
        }
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: #f4f6f8;
            color: #000000;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }
        .login-container{
            background: #ffffff;
            padding: 40px 50px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            width: 350px;
            text-align: center;
        }
        h2 {
            margin-bottom: 30px;
            color: #2c3e50;
        }

        form label {
            display: block;
            text-align: left;
            margin-bottom: 10px;
            font-weight: bold;
        }

        h1 {
            text-align:center;
            margin-top: 60px;
            font-size: 2.5rem;
            color: #2c3e50;
        }

        nav {
            margin-top: 40px;
            display: flex;
            gap: 20px;
        }

        nav a {
            flex: 1;
            text-align: center;
            text-decoration: none;
            font-weight: bold;
            color: #2c3e50;
            padding: 30px 40px;
            border-radius: 12px;
            background: #ffffff;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            transition: 0.3s ease;
        }

        nav a:hover {
            background: #2c3e50;
            color: #fff;
            transform: translateY(-3px);
        }
    </style>
</head>
<body>
<div class="logout">
    <a href="jsp/logout.jsp">Logout</a>
</div>
<h1>Student Management</h1>
<nav>
    <a href="jsp/addStudent.jsp">Add New Student</a>
    <a href="viewStudents">View All Students</a>
    <a href="jsp/searchStudent.jsp">Search Student by ID</a>
</nav>
</body>
</html>
