
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>

<%

// Check Login Session

String name = (String) session.getAttribute("name");
String email = (String) session.getAttribute("email");
String contact = (String) session.getAttribute("contact");
String address = (String) session.getAttribute("address");

String role = (String) session.getAttribute("role");

boolean isAdmin = "admin".equalsIgnoreCase(role);

if (name == null || role == null) {
    response.sendRedirect("Login.jsp");
    return;
}

// Get Orders

List<Map<String, Object>> orders =
    (List<Map<String, Object>>) request.getAttribute("orders");

%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Order History - Gavran Khajina</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body {
    background-color: #fff8f0;
    font-family: Arial, sans-serif;
}

/* Navbar */

.navbar {
    background-color: #212529;
}

/* Customer Card */

.customer-card {
    border-radius: 12px;
    box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
}

/* Order Card */

.order-card {
    margin-bottom: 20px;
    border-radius: 12px;
    box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
    transition: 0.3s;
}

.order-card:hover {
    transform: translateY(-4px);
}

.order-header {
    background-color: #198754;
    color: white;
    padding: 12px;
    border-radius: 12px 12px 0 0;
}

/* Admin Theme */

.admin-header {
    background-color: #7B3F00;
    color: white;
    padding: 20px;
    border-radius: 12px;
    margin-bottom: 25px;
}

/* Buttons */

.btn-admin {
    background-color: #7B3F00;
    color: white;
    border: none;
}

.btn-admin:hover {
    background-color: #542b00;
    color: white;
}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-dark px-3">

    <a class="navbar-brand" href="Home.jsp">
        🍲 Gavran Khajina
    </a>

    <div>

        <% if (isAdmin) { %>

            <a href="admin-dashboard.jsp"
               class="btn btn-warning">
                Admin Dashboard
            </a>

        <% } else { %>

            <a href="Menu.jsp" class="btn btn-warning">
                Menu
            </a>

            <a href="Cart.jsp" class="btn btn-info">
                Cart
            </a>

        <% } %>

    </div>

</nav>


<!-- SUCCESS MESSAGE -->

<%

String msg = (String) session.getAttribute("msg");

if (msg != null) {

%>

<div class="container mt-3">

    <div class="alert alert-success text-center">
        <%= msg %>
    </div>

</div>

<%

session.removeAttribute("msg");

}

%>


<div class="container mt-4">

    <!-- PAGE HEADER -->

    <% if (isAdmin) { %>

        <div class="admin-header">

            <h2>Welcome, Vrushali! 👋</h2>

            <p class="mb-0">
                Gavran Khajina - Admin Order Management
            </p>

        </div>

    <% } %>


    <h2 class="text-center mb-4">

        <%= isAdmin ? "All Customer Orders" : "Order Details" %>

    </h2>


    <!-- CUSTOMER DETAILS -->

    <% if (!isAdmin) { %>

    <div class="card customer-card mb-5">

        <div class="card-header bg-dark text-white">

            <h4>Customer Details</h4>

        </div>

        <div class="card-body">

            <p>
                <b>Name:</b>
                <%= name != null ? name : "N/A" %>
            </p>

            <p>
                <b>Email:</b>
                <%= email != null ? email : "N/A" %>
            </p>

            <p>
                <b>Contact:</b>
                <%= contact != null ? contact : "N/A" %>
            </p>

            <p>
                <b>Address:</b>
                <%= address != null ? address : "N/A" %>
            </p>

        </div>

    </div>

    <% } %>


    <!-- ORDER HISTORY -->

    <h3 class="text-center mb-4">

        <%= isAdmin ? "Manage Customer Orders" : "Your Order History" %>

    </h3>


    <%

    if (orders == null || orders.isEmpty()) {

    %>

        <div class="alert alert-danger text-center">

            No Orders Found!

        </div>

    <%

    } else {

        for (Map<String, Object> order : orders) {

    %>


    <!-- ORDER CARD -->

    <div class="card order-card">

        <div class="order-header">

            <h5 class="mb-0">

                Order ID :
                <%= order.get("orderId") %>

            </h5>

        </div>


        <div class="card-body">


            <!-- CUSTOMER DETAILS FOR ADMIN -->

            <% if (isAdmin) { %>

                <p>

                    <b>Customer Name:</b>

                    <%= order.get("name") != null
                        ? order.get("name") : "N/A" %>

                </p>


                <p>

                    <b>Email:</b>

                    <%= order.get("email") != null
                        ? order.get("email") : "N/A" %>

                </p>


                <p>

                    <b>Contact:</b>

                    <%= order.get("contact") != null
                        ? order.get("contact") : "N/A" %>

                </p>


                <p>

                    <b>Address:</b>

                    <%= order.get("address") != null
                        ? order.get("address") : "N/A" %>

                </p>

                <hr>

            <% } %>


            <!-- ORDER DATE -->

            <p>

                <b>Order Date:</b>

                <%= order.get("date") != null
                    ? order.get("date") : "N/A" %>

            </p>


            <!-- TOTAL AMOUNT -->

            <p>

                <b>Total Amount:</b>

                ₹ <%= order.get("total") != null
                    ? order.get("total") : "0" %>

            </p>


        </div>

    </div>


    <%

        }

    }

    %>

</div>


</body>
</html>
