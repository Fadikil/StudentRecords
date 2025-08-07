<!DOCTYPE html>
<html>
<head>
    <title>Add New Student</title>

    <style>
        body{font-family: Arial, sans-serif;  margin : 40px; }
        form{max-width: 400px;}
        label{display: block; margin-top: 10px;}
        input[type = text], input[type=email]{

        }

    </style>
</head>
<body>
<h1>Add New Student</h1>
<form method = "post" action = "addStudent">
   <label for="name"> Name:</label>
    <input type = "text" name = "name" id = "name" required/>

    <label for="email"> Name:</label>
    <input type = "email" name = "email" id = "email" required/>


    <label for="course"> Name:</label>
    <input type = "text" name = "name" id = "course"required/>

    <input type = "submit" value = "Add Student" />


</form>
<p><a href = "homepage.jsp">Back to Home</a></p>
</body>
</html>