<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MRUX</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #000; /* Black background */
            color: #fff; /* White text */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
            max-width: 600px;
            width: 100%;
            padding: 20px;
        }

        .logo {
            font-size: 8rem;
            font-weight: bold;
            color: #fff;
            margin-bottom: 20px;
        }

        h2 {
            font-size: 2.5rem;
            margin-bottom: 40px;
        }

        .buttons {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .buttons a, .buttons button {
            font-size: 1rem;
            padding: 12px 20px;
            text-align: center;
            color: #000;
            background-color: #1d9bf0;
            border: none;
            border-radius: 20px;
            text-decoration: none;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }

        .buttons a:hover, .buttons button:hover {
            background-color: #1a8cd8;
            transform: scale(1.05);
        }

        .buttons .divider {
            color: #fff;
            margin: 10px 0;
            font-size: 1rem;
        }

        .footer {
            margin-top: 30px;
            font-size: 0.9rem;
            color: #ddd;
        }

        .footer a {
            color: #1d9bf0;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo">MRUX</div>
        <h2>Happening now</h2>
        <h3>join today.</h3>
        <div class="buttons">
            <button>Sign up with Google</button>
            <button>Sign up with Apple</button>
            <div class="divider">or</div>
            <a href="register.jsp">Create account</a>
        </div>
        <div class="footer">
            <p>Already have an account? <a href="login.jsp">Sign in</a></p>
        </div>
    </div>
</body>
</html>
