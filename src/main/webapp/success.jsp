<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String msg = (String) session.getAttribute("msg");
if(msg == null) {
    msg = "Order placed successfully!";
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Success</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: #fff7ed;
    font-family: Arial;
}

.success-box {
    width: 500px;
    margin: 80px auto;
    padding: 30px;
    background: white;
    border-radius: 12px;
    text-align: center;
    box-shadow: 0px 4px 15px rgba(0,0,0,0.2);
}

h1 {
    color: #28a745;
    font-weight: bold;
}

.btn-home {
    margin-top: 20px;
    background: #D2691E;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 8px;
}

.btn-home:hover {
    background: #a84d16;
}
</style>

</head>

<body>

<div class="success-box">

    <h1>🎉 Thank You!</h1>

    <h4>Your Order is Placed Successfully</h4>

    <p class="text-muted"><%= msg %></p>

    <a href="Home.jsp" class="btn btn-home">
        Back to Home
    </a>

    <br><br>

    <a href="OrderHistoryServlet" class="btn btn-primary">
        View Order History
    </a>

</div>

</body>
</html>