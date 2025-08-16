<%@ page import="java.util.List" %>
<%@ page import="Progressoft.io.Student" %>
<%
    List<Student> studentList = (List<Student>) request.getAttribute("students");
%>
<!DOCTYPE html>
<html>
<head>
    <title>All Students</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f9fc;
            padding: 20px;
            text-align: center;
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
<h1>All Students</h1>
<table border="1" cellpadding="5"    >
    <style>
    table {
    table-layout: fixed;
    width: 55%;
    min-width: 700px;
    margin: 0 auto;
    border-collapse: collapse;
    }</style>
    <colgroup>
        <col style="width: 10%;">
        <col style="width: 15%;">
        <col style="width: 45%;">
        <col style="width: 15%;">
        <col style="width: 15%;">
    </colgroup>
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
