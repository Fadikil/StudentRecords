<!DOCTYPE html>
<html>
<head>
    <title>Student Management</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; padding: 0; background: #f4f6f8; color: #000000; display: flex; flex-direction: column; align-items: center; min-height: 100vh; }
        h1 { text-align:center; margin-top: 60px; font-size: 2.5rem; color: #2c3e50; }
        nav { margin-top: 40px; display: flex; gap: 20px; }
        nav a { flex: 1; text-align: center; text-decoration: none; font-weight: bold; color: #2c3e50; padding: 30px 40px; border-radius: 12px; background: #ffffff; box-shadow: 0 4px 10px rgba(0,0,0,0.1); transition: 0.3s ease; }
        nav a:hover { background: #2c3e50; color: #fff; transform: translateY(-3px); }
    </style>
</head>
<body>
<h1>Student Management</h1>
<nav>
    <a href="jsp/addStudent.jsp">Add New Student</a>

    <a href="jsp/viewStudents.jsp">View All Students</a>
    <a href="jsp/searchStudent.jsp">Search Student by ID</a>
</nav>
</body>
</html>
