
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<%
String user = (String) session.getAttribute("name");
String role = (String) session.getAttribute("role");

if (user == null) {
    response.sendRedirect("Login.jsp");
    return;
}

if (!"admin".equalsIgnoreCase(role)) {
    response.sendRedirect("dashboard.jsp");
    return;
}

String adminName = (String) session.getAttribute("adminName");

if (adminName == null) {
    adminName = "Vrushali";
}

int totalUsers = 0;
int totalOrders = 0;
int totalDishes = 0;

String dbURL = "jdbc:mysql://localhost:3306/bb62backend";
String dbUser = "root";
String dbPassword = "vrushali1612";

try {
    Class.forName("com.mysql.cj.jdbc.Driver");

    try (Connection con = DriverManager.getConnection(
            dbURL, dbUser, dbPassword)) {

        // Total Users
        try (Statement st = con.createStatement();
             ResultSet rs = st.executeQuery(
                 "SELECT COUNT(*) FROM users")) {

            if (rs.next()) {
                totalUsers = rs.getInt(1);
            }
        }

        // Total Orders
        try (Statement st = con.createStatement();
             ResultSet rs = st.executeQuery(
                 "SELECT COUNT(*) FROM orderss")) {

            if (rs.next()) {
                totalOrders = rs.getInt(1);
            }
        }

        // Total Dishes
        try (Statement st = con.createStatement();
             ResultSet rs = st.executeQuery(
                 "SELECT COUNT(*) FROM menu_items11")) {

            if (rs.next()) {
                totalDishes = rs.getInt(1);
            }
        }

    }

} catch (Exception e) {
    application.log("Admin Dashboard Database Error", e);
}
%>

<!DOCTYPE html>
<html>
<head>

<title>Vrushali - Admin Dashboard</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body {
    margin: 0;
    background: #fff8f0;
    font-family: Arial, sans-serif;
}

/* Sidebar */

.sidebar {
    width: 250px;
    height: 100vh;
    background: #212529;
    position: fixed;
    padding: 25px 15px;
    top: 0;
    left: 0;
}

.sidebar h2 {
    color: white;
    font-size: 23px;
    margin-bottom: 35px;
}

.sidebar a {
    display: block;
    padding: 14px;
    color: white;
    text-decoration: none;
    margin-bottom: 8px;
    border-radius: 8px;
    transition: 0.3s;
}

.sidebar a:hover,
.sidebar a.active {
    background: #7B3F00;
    color: white;
}

/* Main Content */

.main {
    margin-left: 250px;
    padding: 35px;
}

.welcome {
    background: #7B3F00;
    color: white;
    padding: 25px;
    border-radius: 15px;
    margin-bottom: 30px;
}

.welcome h2 {
    font-weight: bold;
}

/* Dashboard Cards */

.dashboard-card {
    background: white;
    padding: 30px 15px;
    border-radius: 15px;
    text-align: center;
    border: none;
    box-shadow: 0 4px 12px rgba(0,0,0,0.08);
    transition: 0.3s;
}

.dashboard-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.15);
}

.dashboard-card h2 {
    font-size: 35px;
    font-weight: bold;
    color: #7B3F00;
}

.dashboard-card p {
    color: gray;
    margin: 0;
}

/* Quick Links */

.quick-link {
    background: white;
    padding: 20px;
    border-radius: 12px;
    text-decoration: none;
    color: #333;
    display: block;
    margin-bottom: 15px;
    box-shadow: 0 3px 10px rgba(0,0,0,0.06);
    transition: 0.3s;
}

.quick-link:hover {
    background: #7B3F00;
    color: white;
    transform: translateY(-4px);
}

@media(max-width: 768px) {

    .sidebar {
        width: 100%;
        height: auto;
        position: relative;
    }

    .main {
        margin-left: 0;
        padding: 20px;
    }
}

</style>

</head>

<body>

<!-- Sidebar -->

<div class="sidebar">

    <h2>🍲 Gavran Khajina</h2>

    <a href="admin-dashboard.jsp" class="active">
        🏠 Dashboard
    </a>

    <a href="UserServlet">
        👥 Manage Users
    </a>

    <a href="OrderHistoryServlet">
        📦 Manage Orders
    </a>

    <a href="Menu.jsp">
        🍛 Manage Dishes
    </a>

    <a href="Contact.jsp">
        📩 Contact
    </a>

    <a href="LogoutServlet">
        🚪 Logout
    </a>
          
<a href="Login.jsp" class="btn btn-info">
    User Login
</a>


</div>



<!-- Main Dashboard -->

<div class="main">

    <div class="welcome">

        <h2>Welcome, <%= adminName %>! 👋</h2>

        <p>Gavran Khajina - Admin Dashboard</p>

        <p>Manage your traditional food ordering system here.</p>

    </div>


    <!-- Statistics Cards -->

    <h3 class="mb-4">Dashboard Overview</h3>

    <div class="row g-4">

        <div class="col-md-4">

            <div class="dashboard-card">

                <div style="font-size:35px;">👥</div>

                <h2><%= totalUsers %></h2>

                <p>Total Registered Users</p>

            </div>

        </div>


        <div class="col-md-4">

            <div class="dashboard-card">

                <div style="font-size:35px;">📦</div>

                <h2><%= totalOrders %></h2>

                <p>Total Orders</p>

            </div>

        </div>


        <div class="col-md-4">

            <div class="dashboard-card">

                <div style="font-size:35px;">🍛</div>

                <h2><%= totalDishes %></h2>

                <p>Total Dishes</p>

            </div>

        </div>

    </div>


    <!-- Quick Actions -->

    <h3 class="mt-5 mb-4">Quick Actions</h3>

    <div class="row">

        <div class="col-md-6">

            <a href="UserServlet" class="quick-link">
                👥 View Registered Users
            </a>

        </div>

        <div class="col-md-6">

            <a href="OrderHistoryServlet" class="quick-link">
                📦 View Customer Orders
            </a>

        </div>

        <div class="col-md-6">

            <a href="Menu.jsp" class="quick-link">
                🍛 View Food Menu
            </a>

        </div>

        <div class="col-md-6">

            <a href="Contact.jsp" class="quick-link">
                📩 View Contact Page
            </a>

        </div>
  
    </div>

</div>

</body>
</html>
