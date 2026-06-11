<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>

<%

List<String> cart =
(List<String>) session.getAttribute("cart");

int total = 0;

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body {
    background-color: #f8f9fa;
}

.cart-box {
    margin-top: 40px;
    padding: 25px;
    background: white;
    border-radius: 10px;
    box-shadow: 0px 0px 12px rgba(0,0,0,0.1);
}

</style>

</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-dark bg-dark px-3">

    <a class="navbar-brand" href="Home.jsp">
        Gavran Khajina
    </a>

    <a href="Menu.jsp" class="btn btn-warning">
        Back to Menu
    </a>

</nav>

<div class="container cart-box">

<h1>
Cart Size:
<%= cart != null ? cart.size() : 0 %>
</h1>

<h2 class="text-center mb-4">
    Your Cart
</h2>

<%

if (cart == null || cart.isEmpty()) {

%>

    <div class="alert alert-danger text-center">
        Your cart is empty!
    </div>

<%

} else {

%>

    <table class="table table-bordered text-center">

        <thead class="table-warning">

            <tr>
                <th>Dish</th>
                <th>Price</th>
                <th>Action</th>
            </tr>

        </thead>

        <tbody>

<%

for (int i = 0; i < cart.size(); i++) {

    String item = cart.get(i);

    String[] data = item.split("-");

    String name = data[0];

    int price = Integer.parseInt(data[1]);

    total += price;

%>

        <tr>

            <td><%= name %></td>

            <td>₹ <%= price %></td>

            <td>

                <a href="RemoveCartServlet?index=<%= i %>"
                   class="btn btn-danger btn-sm">

                    Remove

                </a>

            </td>

        </tr>

<%

}

%>

        <!-- TOTAL -->

        <tr class="table-success">

            <td><b>Total</b></td>
            <td><b>₹ <%= total %></b></td>
            <td></td>

        </tr>

        </tbody>

    </table>

    <!-- BUTTONS -->

    <div class="text-end mt-3">

        <!-- ✅ FIXED FLOW: GO TO PAYMENT FIRST -->
        <a href="payment.jsp" class="btn btn-success">
            Proceed to Payment
        </a>

        <a href="Menu.jsp" class="btn btn-primary">
            Add More
        </a>

        <a href="OrderHistoryServlet" class="btn btn-info">
            View Orders
        </a>

    </div>

<%

}

%>

</div>

</body>
</html>