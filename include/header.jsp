<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.java.model.User" %>
<%
    User user = (User) session.getAttribute("user");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>📚 E-Book Store</title>
    <link rel="stylesheet" href="css/style.css"/>    
</head>
<style>
/* 🌈 General Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
    font-family: 'Poppins', sans-serif;
}

/* 🧭 Header Styles */
header {
    width: 100%;
    background: linear-gradient(90deg, #1e3c72, #2a5298);
    box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
    position: sticky;
    top: 0;
    z-index: 1000;
}

/* 🧩 Navbar Layout */
.navbar {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 15px 50px;
}

/* 🪶 Logo */
.logo a {
    font-size: 28px;
    font-weight: 700;
    color: white;
    letter-spacing: 1px;
}

/* 🧱 Navigation Links */
ul {
    display: flex;
    align-items: center;
    list-style: none;
}

ul li {
    margin: 0 15px;
}

ul li a {
    color: white;
    font-size: 17px;
    font-weight: 500;
    padding: 8px 15px;
    border-radius: 20px;
    transition: 0.3s ease;
}

/* ✨ Hover Effects */
ul li a:hover {
    background: white;
    color: #2a5298;
    transform: scale(1.05);
    box-shadow: 0 0 10px rgba(255, 255, 255, 0.4);
}

/* 👤 User Greeting */
span {
    color: #fff;
    font-weight: 500;
    margin-right: 10px;
}

/* 📱 Responsive */
@media (max-width: 768px) {
    .navbar {
        flex-direction: column;
        gap: 10px;
        padding: 10px 20px;
    }

    ul {
        flex-direction: column;
        gap: 10px;
        align-items: center;
    }
}
</style>

<body>
<header>
    <nav class="navbar">
        <div class="logo">
            <a href="books">📚 E-Book Store</a>
        </div>
        <ul>
            <li><a href="books">Home</a></li>
            <li><a href="books?action=add">Add Book</a></li>
            <li><a href="cart">Cart</a></li>

            <% if (user == null) { %>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="register.jsp">Register</a></li>
            <% } else { %>
            <span>Hi, <%= user.getFullName() == null ? user.getUsername() : user.getFullName() %></span>
                <li><a href="auth?action=logout">Logout</a></li>   
                                                                   
            <% } %>  
            <li><a href="contact.jsp">Contact Us</a></li>              
        </ul>
    </nav>
</header>


