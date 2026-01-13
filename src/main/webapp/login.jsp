<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>

<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Login User</title>
    <!-- Link ke file CSS -->
    <link rel="stylesheet" href="css/login.css">
</head>
<body>

<%
    String message = "";

    if(request.getMethod().equalsIgnoreCase("POST")){
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Hardcode user
        Map<String, String> users = new HashMap<>();
        users.put("user1", "123");
        users.put("user2", "456");

        if(users.containsKey(username) && users.get(username).equals(password)){
            session.setAttribute("role", "user");
            session.setAttribute("username", username);
            response.sendRedirect("index.jsp");
        } else {
            message = "Username atau password salah!";
        }
    }
%>

<div class="login-wrapper">
    <div class="login-card">
        <!-- Brand -->
        <div class="login-brand">
            <img src="img/logo.png" alt="Logo">
            <h1>Rental Mobil</h1>
            <p>Silakan login untuk melanjutkan</p>
        </div>

        <!-- Form -->
        <form method="post" class="login-form">
            <% if(!message.isEmpty()){ %>
                <div class="error-msg"><%= message %></div>
            <% } %>

            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username" placeholder="Masukkan username" required>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" placeholder="Masukkan password" required>
            </div>

            <button type="submit" class="btn-login">Login</button>
        </form>

        <!-- Info user -->
        <div class="info-user">
            <p>Username & Password untuk testing:</p>
            <ul>
                <li>Username: user1 | Password: 123</li>
                <li>Username: user2 | Password: 456</li>
            </ul>
        </div>
    </div>
</div>

</body>
</html>
