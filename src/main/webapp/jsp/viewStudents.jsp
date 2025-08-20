<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Students</title>
    <style>
        body { font-family: Arial, sans-serif; background-color:#f7f9fc; text-align:center; }
        table { margin:20px auto; border-collapse: collapse; width:70%; }
        th, td { border:1px solid #ccc; padding:8px; }
        th { background:#eee; }
        a, button { background:#CD5C5C; color:#fff; padding:6px 10px; border:none; border-radius:3px; cursor:pointer; }
    </style>
</head>
<body>
<h1>All Students</h1>

<div id="studentTable"></div>
<p><a href="<%= request.getContextPath()%>/index.jsp">Back to Home</a></p>

<script>
    function loadStudents() {
        fetch("<%= request.getContextPath() %>/viewStudents")
            .then(r => r.text())
            .then(data => {
                document.getElementById("studentTable").innerHTML = data;

                document.querySelectorAll(".deleteBtn").forEach(btn => {
                    btn.addEventListener("click", () => {
                        const id = btn.getAttribute("data-id");
                        deleteStudent(id);
                    });
                });
            });
    }

    function deleteStudent(id) {
        fetch("<%= request.getContextPath() %>/deleteStudent", {
            method: "POST",
            headers: {"Content-Type": "application/x-www-form-urlencoded"},
            body: "id=" + id
        })
            .then(r => r.text())
            .then(msg => {
                alert(msg);
                loadStudents();
            })
            .catch(() => alert("Error deleting student."));
    }

    window.onload = loadStudents;
</script>
</body>
</html>
