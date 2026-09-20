<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
if (session.getAttribute("name") == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
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
            color: #333333;
            min-height: 100vh;
        }

        /* Navigation Header */
        header {
            background-color: #ffffff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
            padding: 16px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        h2 {
            font-size: 20px;
            font-weight: 600;
            color: #222222;
        }

        /* Logout Button Styling */
        .btn-logout {
            display: inline-block;
            text-decoration: none;
            background-color: #dc3545; /* Crimson Red for dangerous/destructive actions */
            color: #ffffff;
            padding: 8px 20px;
            font-size: 14px;
            font-weight: 600;
            border-radius: 6px;
            transition: background-color 0.2s ease, transform 0.1s ease;
        }

        .btn-logout:hover {
            background-color: #bd2130;
        }

        .btn-logout:active {
            transform: scale(0.97);
        }

        /* Main Content Workspace Grid/Area */
        .dashboard-container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 0 20px;
        }

        .welcome-card {
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.03);
        }

        .welcome-card p {
            color: #666666;
            margin-top: 10px;
            line-height: 1.6;
        }
    </style>
</head>
<body>

    <header>
        <h2>Welcome, User</h2>
        <a href="logout" class="btn-logout">Logout</a>
    </header>

    <main class="dashboard-container">
        <div class="welcome-card">
            <h2>Your Workspace</h2>
            <br>
            <h3>You have successfully logged in.</h3>
            <h3>Welcome, <%= session.getAttribute("name") %>!</h3>
        </div>
    </main>

</body>
</html>