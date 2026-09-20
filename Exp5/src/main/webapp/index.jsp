<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <style>
        /* Reset and layout baseline */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Container Card */
        .card {
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.05);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        h1 {
            color: #333333;
            font-size: 24px;
            margin-bottom: 10px;
        }

        p {
            color: #666666;
            font-size: 14px;
            margin-bottom: 30px;
        }

        /* Styled Login Link Button */
        .btn-login {
            display: inline-block;
            text-decoration: none;
            background-color: #007bff;
            color: #ffffff;
            padding: 12px 30px;
            font-size: 16px;
            font-weight: 600;
            border-radius: 6px;
            transition: background-color 0.2s ease, transform 0.1s ease;
            width: 100%;
        }

        .btn-login:hover {
            background-color: #0056b3;
        }

        .btn-login:active {
            transform: scale(0.98);
        }
    </style>
</head>
<body>

    <div class="card">
        <h1>Welcome Back</h1>
        <p>Please sign in to access your account dashboard.</p>
        <a href="login.jsp" class="btn-login">Login</a>
    </div>

</body>
</html>
