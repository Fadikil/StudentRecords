<%@ page import="java.util.List" %>
<%@ page import="Progressoft.io.Student" %>
<%
    List<Student> studentList = (List<Student>) request.getAttribute("students");
%>
<!DOCTYPE html>
<html>
<head>
    <title>All Students</title>
</head>
<body>
<h1>All Students</h1>
<table border="1" cellpadding="5">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Course</th>
        <th>Action</th>
    </tr>
    <%
        if (studentList != null && !studentList.isEmpty()) {
            for (Student student : studentList) {
    %>
    <tr>
        <td><%= student.getId() %></td>
        <td><%= student.getName() %></td>
        <td><%= student.getEmail() %></td>
        <td><%= student.getCourse() %></td>
        <td>
            <form method="post" action="${pageContext.request.contextPath}/deleteStudent">
                <input type="hidden" name="id" value="<%= student.getId() %>">
                <input type="submit" value="Delete">
            </form>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr><td colspan="5">No students found.</td></tr>
    <% } %>
</table>
<p><a href="${pageContext.request.contextPath}/index.jsp">Back to Home</a></p>
</body>
</html>
