
<!DOCTYPE html>
<html>
<head>
    <title>Add New Student</title>
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

        form {
            background-color: white;
            padding: 20px;
            max-width: 400px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            text-align: center;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="email"]:focus {
            border-color: #4a90e2;
            outline: none;
        }

        input[type="submit"] {
            margin-top: 15px;
            background-color:  #2c3e50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #357abd;
        }

        .error {
            color: red;
            margin-bottom: 10px;
        }

        a {
            background:#CD5C5C;
            color:#FAF9F6;
            font-size:15px;
            padding:8px 12px;
            border-radius:3px;
            text-decoration:none;
            display:inline-block;
            margin-top:15px;
        }
    </style>
</head>
<body>
<h1>Add New Student</h1>

<%
    String error = (String) request.getAttribute("error");
    if (error != null) {
%>
<div class="error"><%= error %></div>
<% } %>

<form method="post" action="${pageContext.request.contextPath}/addStudent">
    <label>Name:</label>
    <input type="text" name="name" required>

    <label>Email:</label>
    <input type="email" name="email" required>

    <label>Course:</label>
    <input type="text" name="course" required>

    <input type="submit" value="Add Student">
</form>

<a target="_blank" href="<%= request.getContextPath() %>/index.jsp">Back to Home</a>
</body>
</html>
