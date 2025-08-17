<!DOCTYPE html>
<html>
<head>
    <title>Search Student</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f9fc;
        padding: 20px;
        text-align: center;
    }
form {
    background-color: white;
    padding: 20px;
    max-width: 400px;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
    margin: 0 auto;
}
a {
    background:#CD5C5C;
    color:#FAF9F6;
    font-size:15px;
    padding:8px 12px;
    border-radius:3px;
    text-decoration:none;
    display: block;
    width: fit-content;
    margin: 15px auto 0;


}
</style>

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
