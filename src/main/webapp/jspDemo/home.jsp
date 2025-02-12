<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>X Clone</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <script src="script.js"></script>
    <style>
        /* Basic styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        .navbar {
            background-color: #000;
            color: #fff;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .navbar .menu {
            display: flex;
            gap: 15px;
        }

        .navbar .menu a {
            color: #fff;
            text-decoration: none;
        }

        .content {
            padding: 20px;
        }

        .tweet-box {
            background: #fff;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 20px;
        }

        .tweet-box textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            resize: none;
        }

        .tweet-box button {
            background: #1da1f2;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            margin-top: 10px;
            cursor: pointer;
        }

        .tweet {
            background: #fff;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .tweet .username {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="logo">X Clone</div>
        <div class="menu">
            <a href="#">Home</a>
            <a href="#">Explore</a>
            <a href="#">Notifications</a>
            <a href="#">Profile</a>
        </div>
    </div>

    <div class="content">
        <div class="tweet-box">
            <textarea rows="3" placeholder="What's happening?"></textarea>
            <button onclick="postTweet()">Tweet</button>
        </div>

        <!-- Example tweets -->
        <div class="tweet">
            <div class="username">@user1</div>
            <div class="text">This is a tweet example!</div>
        </div>
        <div class="tweet">
            <div class="username">@user2</div>
            <div class="text">Hello world! #XClone</div>
        </div>
    </div>

    <script>
        function postTweet() {
            const textArea = document.querySelector('.tweet-box textarea');
            const content = textArea.value.trim();

            if (content) {
                const tweetsContainer = document.querySelector('.content');
                const newTweet = document.createElement('div');
                newTweet.classList.add('tweet');
                newTweet.innerHTML = `
                    <div class="username">@you</div>
                    <div class="text">${content}</div>
                `;
                tweetsContainer.appendChild(newTweet);
                textArea.value = '';
            } else {
                alert("Your tweet is empty!");
            }
        }
    </script>
</body>
</html>
