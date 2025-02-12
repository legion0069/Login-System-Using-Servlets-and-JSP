<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            /* background-image: url('background.jpg'); 
            background-size: cover;
            background-position: center; */
            background-color: #000; /* Black background */
            color: #fff; /* White text */
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            background: rgba(255, 255, 255, 0.95);
            padding: 25px 35px;
            border-radius: 10px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 400px;
        }
        .container h1 {
            margin-bottom: 20px;
            color: #333;
            font-size: 24px;
        }
        .container label {
            display: block;
            font-size: 14px;
            color: #555;
            text-align: left;
            margin-bottom: 5px;
        }
        .container input,
        .container select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
        }
        .container button {
            width: 100%;
            padding: 12px;
            background-color: #28a745;
            color: white;
            border: none;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .container button:hover {
            background-color: #218838;
        }
        .container a {
            display: block;
            margin-top: 15px;
            text-decoration: none;
            color: #007BFF;
            font-size: 14px;
        }
        .container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Register</h1>
        <form action="register" method="post">
            <label for="rollno">Roll Number:</label>
            <input type="text" id="rollno" name="rollno" required placeholder="Enter your Roll Number">

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required placeholder="Enter your Username">

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required placeholder="Enter your Password">

            <label for="confirm-password">Confirm Password:</label>
            <input type="password" id="confirm-password" name="confirmPassword" required placeholder="Confirm your Password">

            <label for="name">Full Name:</label>
            <input type="text" id="name" name="name" required placeholder="Enter your Full Name">

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required placeholder="Enter your Email">

            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" required>

            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="">Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>

            <label for="course">Course:</label>
            <input type="text" id="course" name="course" required placeholder="Enter your Course">

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required placeholder="Enter your Address">

            <button type="submit">Register</button>
        </form>
        <a href="login.jsp">Already have an account? Login</a>
    </div>

    <script>
        // Simple password match validation
        const form = document.querySelector('form');
        const passwordInput = document.getElementById('password');
        const confirmPasswordInput = document.getElementById('confirm-password');

        form.addEventListener('submit', (e) => {
            if (passwordInput.value !== confirmPasswordInput.value) {
                e.preventDefault();
                alert('Passwords do not match. Please re-enter.');
                confirmPasswordInput.focus();
            }
        });
    </script>
</body>
</html>
