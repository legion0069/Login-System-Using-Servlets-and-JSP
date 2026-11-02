# Student Login System

A simple web application where a student can create an account, log in, and view a personal dashboard after successful authentication.

Think of it as a mini website that works like a student portal: a user signs up, enters their credentials, gets access only after login, and then sees their details on a secure page.

This project is designed to help beginners understand how Java web applications work using Servlets and JSP.

## What this project does

This app allows a user to:

- register a new account
- log in with a username and password
- stay logged in while the session is active
- view a dashboard with their profile information
- log out securely
- see helpful error messages if login or registration fails

In simple words: it is a basic login system with a signup page and a private dashboard.

## Why this project is useful

This project is a great beginner-friendly example of:

- how web pages connect to Java code
- how users are verified before being allowed in
- how sessions keep track of logged-in users
- how JSP pages display dynamic content
- how a basic web application is structured

## Simple flow of the app

1. A new user opens the registration page.
2. They enter details like username, password, name, email, and course.
3. The app checks if the username and roll number are already in use.
4. If everything is valid, the user is successfully registered.
5. The user then logs in with their username and password.
6. If the login is correct, the app creates a session and redirects the user to the dashboard.
7. The dashboard shows the user’s information.
8. The user can log out when finished.

## Main features

- User registration form
- Login page with username/password validation
- Session management for logged-in users
- Personal dashboard after login
- Logout functionality
- Error handling for invalid login or password mismatch
- Beginner-friendly Java web project structure

## How it works behind the scenes

This project uses a common Java web architecture:

- JSP files handle the UI (web pages seen by users)
- Servlets handle requests such as login and registration
- Java classes store user data temporarily in memory
- HTTP sessions keep track of who is logged in
- Tomcat runs the web application locally in the browser

So when a user clicks Login, the browser sends the information to a Java Servlet. The Servlet checks the credentials and either allows access or shows an error.

## Technology used

- Java
- Java Servlets
- JSP (JavaServer Pages)
- Apache Tomcat
- HTML/CSS for the page design

## Project structure

```text
Login-System-Using-Servlets-and-JSP/
├── README.md
├── src/
│   └── main/
│       ├── java/
│       │   ├── demo/
│       │   └── login_system/
│       │       ├── DashboardServlet.java
│       │       ├── LoginServlet.java
│       │       ├── LogoutServlet.java
│       │       ├── RegisterServlet.java
│       │       └── dto/
│       │           ├── Student.java
│       │           └── UserStore.java
│       └── webapp/
│           ├── login.jsp
│           ├── register.jsp
│           ├── dashboard.jsp
│           ├── success.jsp
│           ├── error.jsp
│           └── WEB-INF/
├── .classpath
├── .project
└── LICENSE
```

## Prerequisites

Before running this project, make sure you have:

- Java JDK 8 or newer
- Apache Tomcat installed
- An IDE such as Eclipse or IntelliJ IDEA

## How to run the project

### 1. Clone the repository

```bash
git clone https://github.com/legion0069/Login-System-Using-Servlets-and-JSP.git
```

### 2. Open it in your IDE

Import the project into Eclipse or IntelliJ IDEA.

### 3. Configure Tomcat

Add Apache Tomcat to your IDE and set it as the server for this project.

### 4. Run the project

Deploy the application to Tomcat and start the server.

### 5. Open the app in your browser

Usually, the app will be available at:

```text
http://localhost:8080/LoginSystem
```

If your project name or server configuration is different, the actual URL may vary slightly. But in most cases it will be a localhost Tomcat URL.

## Typical user journey

### Registration

The user enters:

- roll number
- username
- password
- confirm password
- full name
- email
- date of birth
- gender
- course
- address

The application checks whether the username and roll number are already taken before creating the account.

### Login

The user types their username and password. If the details match, they are taken to the dashboard.

### Dashboard

After login, the user sees their personal information on a welcome page and can log out safely.

## Important note

This project stores user data in memory while the server is running. That means the data is not permanently saved to a database. It is a great beginner example, but it is not meant for production use.

For a real-world app, you would usually connect it to a database and use password hashing.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Acknowledgements

This project was created to demonstrate beginner-level Java web development concepts such as:

- login and registration
- HTTP sessions
- Java EE web apps
- JSP and Servlet integration

It is a simple but practical example for learning how a login system works.

## Final message

This project is a beginner-friendly example of how a real login system works in Java web applications. It is a good starting point for students and developers who want to understand user authentication, page navigation, and session-based security in a web app.
