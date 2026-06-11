<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Integer orderId = (Integer) session.getAttribute("orderId");
Integer totalAmount = (Integer) session.getAttribute("totalAmount");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Success</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background-color: #f8f9fa;
}

.success-container {
    margin-top: 120px;
    text-align: center;
}

.card-box {
    background: white;
    padding: 40px;
    border-radius: 12px;
    box-shadow: 0px 0px 15px rgba(0,0,0,0.1);
}
</style>

</head>

<body>

<div class="container success-container">

    <div class="card-box">

        <h1 class="text-success">✔ Order Placed Successfully</h1>

        <hr>

        <h4>Order ID: <b><%= orderId %></b></h4>
        <h4>Total Amount: <b>₹ <%= totalAmount %></b></h4>

        <p class="text-muted mt-3">
            Thank you for ordering from <b>Gavran Khajina</b>
        </p>

        <div class="mt-4">

            <a href="Menu.jsp" class="btn btn-primary">
                Back to Menu
            </a>

            <a href="Cart.jsp" class="btn btn-warning">
                View Cart
            </a>

        </div>

    </div>

</div>

</body>
</html>