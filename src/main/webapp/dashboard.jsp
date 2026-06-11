<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String user = (String) session.getAttribute("name");
String role = (String) session.getAttribute("role");

// redirect if not logged in
if (user == null) {
    response.sendRedirect("Login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background-color: #f8f9fa;
  
   }

.hero {
    background: linear-gradient(to right, #198754, #145c32);
    color: white;
    padding: 50px;
    border-radius: 12px;
    text-align: center;
    margin-top: 20px;
}

.card-box {
    transition: 0.3s;
    border-radius: 12px;
}

.card-box:hover {
    transform: scale(1.05);
}
</style>

</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-dark bg-dark px-3">

    <a class="navbar-brand" href="dashboard.jsp">
        Gavran Khajina
    </a>

    <div>

        <a href="Menu.jsp" class="btn btn-info btn-sm">Menu</a>
        <a href="Cart.jsp" class="btn btn-info btn-sm">Cart</a>
        <a href="OrderHistoryServlet" class="btn btn-info btn-sm">Orders</a>

       <%
if(role!=null && role.equalsIgnoreCase("admin")){
%>

<a href="admin-dashboard.jsp"
class="btn btn-warning btn-sm">
Admin Panel
</a>

<%
}
%>

        <a href="LogoutServlet" class="btn btn-light btn-sm">Logout</a>

    </div>

</nav>

<!-- Hero Section -->
<div class="container">

   <div style="background:#7B3F00; " class= "hero">

    <h1 style="font-size: 32px; font-weight: bold;">
        🍽 Welcome, <%= user %> 👋
    </h1>

    <p style="font-size: 18px; margin-top: 10px;">
        Delicious homemade food delivered with love ❤️
    </p>

    <p style="font-size: 16px; margin-top: 10px;">
        Your Role: <b style="color: #FFD700;"><%= role %></b>
    </p>

</div>

   <!-- Feature Cards -->
<div class="row mt-4 text-center">

    <!-- Home -->
    <div class="col-md-3">
        <div class="card card-box p-3">
            <h4>🏠 Home</h4>
            <p>Go to dashboard home</p>
            <a href="Home.jsp" class="btn btn-success" style="background-color:#7B3F00; border-color:#7B3F00;">Open</a>
        </div>
    </div>

    <!-- Menu -->
    <div class="col-md-3">
        <div class="card card-box p-3">
            <h4>🍽 Menu</h4>
            <p>Explore delicious food</p>
            <a href="Menu.jsp" class="btn btn-success" style="background-color:#7B3F00; border-color:#7B3F00;">Open</a>
        </div>
    </div>

    <!-- Cart -->
    <div class="col-md-3">
        <div class="card card-box p-3">
            <h4>🛒 Cart</h4>
            <p>View selected items</p>
            <a href="Cart.jsp" class="btn btn-success" style="background-color:#7B3F00; border-color:#7B3F00;">Open</a>
        </div>
    </div>

    <!-- Orders -->
    <div class="col-md-3">
        <div class="card card-box p-3">
            <h4>📦 Orders</h4>
            <p>Track order history</p>
            <a href="OrderHistoryServlet" class="btn btn-success" style="background-color:#7B3F00; border-color:#7B3F00;">Open</a>
        </div>
    </div>

    <!-- Contact -->
    <div class="col-md-3 mt-3">
        <div class="card card-box p-3">
            <h4>📞 Contact</h4>
            <p>Get in touch with us</p>
            <a href="Contact.jsp" class="btn btn-success" style="background-color:#7B3F00; border-color:#7B3F00;">Open</a>
        </div>
    </div>

</div>
</body>
</html>