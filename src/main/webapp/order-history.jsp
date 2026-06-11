<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>

<%

List<Map<String, Object>> orders =
(List<Map<String, Object>>) request.getAttribute("orders");

// CUSTOMER DETAILS FROM SESSION

String name = (String) session.getAttribute("name");
String email = (String) session.getAttribute("email");
String contact = (String) session.getAttribute("contact");
String address = (String) session.getAttribute("address");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order History</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background-color:#f8f9fa;
}

/* CUSTOMER CARD */

.customer-card{
    border-radius:12px;
    box-shadow:0px 0px 10px rgba(0,0,0,0.1);
}

/* ORDER CARD */

.order-card{
    margin-bottom:20px;
    border-radius:12px;
    box-shadow:0px 0px 10px rgba(0,0,0,0.1);
}

.order-header{
    background-color:#198754;
    color:white;
    padding:12px;
    border-radius:12px 12px 0 0;
}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-dark bg-dark px-3">

    <a class="navbar-brand" href="Home.jsp">
        Gavran Khajina
    </a>

    <div>

        <a href="Menu.jsp" class="btn btn-warning">
            Menu
        </a>

        <a href="Cart.jsp" class="btn btn-info">
            Cart
        </a>

    </div>

</nav>

<!-- SUCCESS MESSAGE -->

<%

String msg = (String) session.getAttribute("msg");

if(msg != null){

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

    <!-- PAGE TITLE -->

    <h2 class="text-center mb-4">
        Order Details
    </h2>

    <!-- CUSTOMER DETAILS -->

    <div class="card customer-card mb-5">

        <div class="card-header bg-dark text-white">

            <h4>
                Customer Details
            </h4>

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

    <!-- ORDER HISTORY TITLE -->

    <h3 class="text-center mb-4">
        Your Order History
    </h3>

<%

if(orders == null || orders.isEmpty()){

%>

    <div class="alert alert-danger text-center">

        No Orders Found!

    </div>

<%

}else{

    for(Map<String, Object> order : orders){

%>

    <!-- ORDER CARD -->

    <div class="card order-card">

        <div class="order-header">

            <h5>
                Order ID :
                <%= order.get("orderId") %>
            </h5>

        </div>

        <div class="card-body">

            <p>
                <b>Order Date :</b>
                <%= order.get("date") != null
                    ? order.get("date")
                    : "N/A" %>
            </p>

            <p>
                <b>Total Amount :</b>
                ₹ <%= order.get("total") != null
                    ? order.get("total")
                    : "0" %>
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