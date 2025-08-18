
<!DOCTYPE html>
<html>
<head>
    <title>Add New Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }
        form {
            max-width: 400px;
        }
        label {
            display: block;
            margin-top: 10px;
        }
        input[type=text], input[type=email] {
            width: 100%;
            padding: 8px;
            margin-top: 4px;
        }
        input[type=submit] {
            margin-top: 15px;
        }
        .error {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<h1>Add New Student</h1>

<!-- Display error if exists -->
<c:if test="${not empty error}">
    <div class="error">${error}</div>
</c:if>

<form method="post" action="${pageContext.request.contextPath}/addStudent">
    <label for="name">Name:</label>
    <input type="text" name="name" id="name" required/>

    <label for="email">Email:</label>
    <input type="email" name="email" id="email" required/>

    <label for="course">Course:</label>
    <input type="text" name="course" id="course" required/>

    <input type="submit" value="Add Student"/>
</form>

<p><a href="${pageContext.request.contextPath}/viewstudent.jsp">View All Students</a></p>
</body>
</html>
