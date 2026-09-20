<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login page</title>
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
        .login-container {
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.05);
            max-width: 400px;
            width: 100%;
        }

        h2 {
            color: #333333;
            font-size: 24px;
            margin-bottom: 24px;
            text-align: center;
        }

        /* Form Group Layout */
        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555555;
            font-size: 14px;
            font-weight: 500;
        }

        /* Input Styling */
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px 14px;
            border: 1px solid #cccccc;
            border-radius: 6px;
            font-size: 14px;
            color: #333333;
            outline: none;
            transition: border-color 0.2s ease, box-shadow 0.2s ease;
        }

        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #007bff;
            box-shadow: 0 0 0 3px rgba(0, 123, 255, 0.15);
        }

        /* Action elements styling */
        .actions-group {
            margin-top: 24px;
            text-align: center;
        }

        button[type="submit"] {
            width: 100%;
            background-color: #007bff;
            color: #ffffff;
            padding: 12px;
            font-size: 16px;
            font-weight: 600;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.2s ease, transform 0.1s ease;
            margin-bottom: 16px;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }

        button[type="submit"]:active {
            transform: scale(0.98);
        }

        /* Back Link Styling */
        .btn-back {
            display: inline-block;
            color: #666666;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.2s ease;
        }

        .btn-back:hover {
            color: #333333;
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <div class="login-container">
        <h2>Login Page</h2>
            <form action="login" method="post">
                    
            <% if (request.getParameter("error") !=null) {
                 %>
                    <p style="color:red; text-align:center;">
                    Incorrect Credentials
                    </p>
                <% 
                }
            %>
            <div class="form-group">
                <label for="email">Enter Email:</label>
                <input type="email" name="email" id="email" placeholder="example@domain.com" required>
            </div>

            <div class="form-group">
                <label for="pass">Enter Password:</label>
                <input type="password" name="pass" id="pass" placeholder="••••••••" required>
            </div>

            <div class="actions-group">
                <button type="submit">Login</button>
                <a href="index.jsp" class="btn-back">Go Back!</a>
            </div>
                </form>
    </div>
</body>

</html>