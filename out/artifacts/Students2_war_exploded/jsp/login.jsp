<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background: #ffffff;
            padding: 40px 50px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            width: 350px;
            text-align: center;
        }

        h2 {
            margin-bottom: 30px;
            color: #2c3e50;
        }

        form label {
            display: block;
            text-align: left;
            margin-bottom: 15px;
            font-weight: bold;
            color: #2c3e50;
        }

        form input {
            width: 100%;
            padding: 12px;
            margin-top: 5px;
            border-radius: 12px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            font-size: 1rem;
        }

        form button {
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            background-color: #2c3e50;
            color: #fff;
            font-weight: bold;
            border: none;
            border-radius: 12px;
            cursor: pointer;
            transition: 0.3s ease;
            font-size: 1rem;
        }

        form button:hover {
            background-color: #34495e;
        }

        .error {
            color: red;
            margin-top: 15px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2>Please enter your login details</h2>
    <form method="post" action="${pageContext.request.contextPath}/login">
        <label>Username:
            <input type="text" name="username" required>
        </label>
        <label>Password:
            <input type="password" name="password" required>
        </label>
        <button type="submit">Login</button>
    </form>
    <div class="error">${error}</div>
</div>
</body>
</html>
