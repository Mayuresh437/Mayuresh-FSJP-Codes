<%@ page language="java" %>
<%@ page import="java.util.Date" %>
<%
    // Fallback variables if the user navigates directly without submitting the form
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    
    if (name == null || name.trim().isEmpty()) { name = "Guest"; }
    if (email == null || email.trim().isEmpty()) { email = "Not provided"; }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f4f7f6;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .dashboard-card {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
            width: 100%;
            max-width: 500px;
        }

        h1 {
            color: #1a1a1a;
            font-size: 28px;
            margin-bottom: 24px;
            border-bottom: 2px solid #f0f0f0;
            padding-bottom: 12px;
        }

        .info-group {
            margin-bottom: 20px;
        }

        .info-label {
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: #8c8c8c;
            font-weight: 700;
            margin-bottom: 4px;
        }

        .info-value {
            font-size: 16px;
            color: #333333;
            font-weight: 500;
        }

        .timestamp-box {
            margin-top: 30px;
            background-color: #f8fafc;
            border-left: 4px solid #4070f4;
            padding: 12px 16px;
            border-radius: 0 8px 8px 0;
        }

        .timestamp-box .info-value {
            color: #4b5563;
            font-family: 'Courier New', Courier, monospace;
            font-weight: 600;
        }
    </style>
</head>
<body>

    <div class="dashboard-card">
        <h1>Welcome, <%= name %></h1>
        
        <div class="info-group">
            <div class="info-label">Email Address</div>
            <div class="info-value"><%= email %></div>
        </div>

        <div class="timestamp-box">
            <div class="info-label">Session Login Time</div>
            <div class="info-value"><%= new Date() %></div>
        </div>
    </div>

</body>
</html>