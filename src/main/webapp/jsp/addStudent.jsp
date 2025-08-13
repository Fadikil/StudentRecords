<!DOCTYPE html>
<html>
<head>
    <title>Add New Student</title>
</head>
<body>
<h1>Add New Student</h1>

<%
    String error = (String) request.getAttribute("error");
    if (error != null) {
%>
<div style="color:red;"><%= error %></div>
<% } %>

<form method="post" action="<%= request.getContextPath() %>/addStudent">
    <label>Name:</label>
    <input type="text" name="name" required><br>

    <label>Email:</label>
    <input type="email" name="email" required><br>

    <label>Course:</label>
    <input type="text" name="course" required><br>

    <input type="submit" value="Add Student">
</form>

<p><a href="<%= request.getContextPath() %>/index.jsp">Back to Home</a></p>
</body>
</html>
