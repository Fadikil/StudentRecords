<%@ page contentType = "text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html>
<head>
    <title>All Students</title>
    <style>
        body{font-family: Arial, sans-serif; background-color:#f7f9fc; text-align:center;}
        table{margin:20px auto; border-collapse: collapse; width:70%;}
        th, td{border:1px solid #ccc; padding:8px;}
        th{background:#eee;}
        a, input[type=submit]{
            background:#CD5C5C; color:#fff; padding:6px 10px; border:none;
            border-radius:3px; text-decoration:none; cursor:pointer;
        }
        </style>
</head>
<body>
<h1>All Students</h1>

<table>
    <tr>
        <th>ID</th><th>Name</th><th>Email</th><th>Course</th><th>Action</th>
    </tr>
    <c:choose>
        <c:when test="${not empty students}">
            <c:forEach var="student" items="${students}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.email}</td>
                    <td>${student.course}</td>
                    <td>
                        <form method="post" action="${pageContext.request.contextPath}/deleteStudent">
                            <input type="hidden" name="id" value="${student.id}"/>
                            <input type="submit" value="Delete" />
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <tr><td colspan="5">No students found.</td></tr>
        </c:otherwise>
    </c:choose>

</table>

<p><a href = "${pageContext.request.contextPath}/index.jsp">Back to Home</a></p>

</body>
</html>