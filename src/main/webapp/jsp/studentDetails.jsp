<%@ page import="Progressoft.io.Student" %>

<%
    Student student = (Student) request.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Details</title>
</head>
<body>
<h1>Student Details</h1>

<% if (student != null) { %>
<p><strong>ID:</strong> <%= student.getId() %></p>
<p><strong>Name:</strong> <%= student.getName() %></p>
<p><strong>Email:</strong> <%= student.getEmail() %></p>
<p><strong>Course:</strong> <%= student.getCourse() %></p>
<% } else { %>
<p>Student not found.</p>
<% } %>

<p><a href="<%= request.getContextPath() %>/index.jsp">Back to Home</a></p>
</body>
</html>
