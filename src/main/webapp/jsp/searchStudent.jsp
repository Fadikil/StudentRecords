<!DOCTYPE html>
<html>
<head>
    <title>Search Student</title>
</head>
<body>
<h1>Search student by ID</h1>
<form method="get" action="<%= request.getContextPath() %>/searchStudent">
    <label for="id">Student ID:</label>
    <input type="number" name="id" id="id" required/>
    <input type="submit" value="Search"/>
</form>

<p><a href="<%= request.getContextPath() %>/index.jsp">Back to Home</a></p>
</body>
</html>
