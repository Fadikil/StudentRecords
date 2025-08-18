<%@ page import="Progressoft.io.Student" %>

<%
    Student student = (Student) request.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f9fc;
            padding: 20px;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        .container {
            background-color: white;
            padding: 20px;
            max-width: 400px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            margin: 20px auto;
            text-align: left;
        }

        .label {
            font-weight: bold;
        }

        .value {
            margin-bottom: 10px;
        }

        .not-found {
            color: red;
            font-weight: bold;
            text-align: center;
        }

        a {
            background: #CD5C5C;
            color: #FAF9F6;
            font-size: 15px;
            padding: 8px 12px;
            border-radius: 3px;
            text-decoration: none;
            display: inline-block;
            margin-top: 15px;
        }
    </style>
</head>
<body>
<h1>Student Details</h1>

<% if (student != null) { %>
<div class="container">
    <p><span class="label">ID:</span> <span class="value"><%= student.getId() %></span></p>
    <p><span class="label">Name:</span> <span class="value"><%= student.getName() %></span></p>
    <p><span class="label">Email:</span> <span class="value"><%= student.getEmail() %></span></p>
    <p><span class="label">Course:</span> <span class="value"><%= student.getCourse() %></span></p>
</div>
<% } else { %>
<p class="not-found">Student not found.</p>
<% } %>

<p><a href="<%= request.getContextPath() %>/index.jsp">Back to Home</a></p>
</body>
</html>
