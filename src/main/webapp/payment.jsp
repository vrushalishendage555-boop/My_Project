<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>

<%
List<String> cart = (List<String>) session.getAttribute("cart");

int total = 0;

if(cart != null) {
    for(String item : cart) {
        String[] data = item.split("-");
        total += Integer.parseInt(data[1]);
    }
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Page</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: #fff7ed;
    font-family: Arial;
}

.payment-box {
    width: 500px;
    margin: 60px auto;
    padding: 25px;
    background: white;
    border-radius: 12px;
    box-shadow: 0px 4px 15px rgba(0,0,0,0.2);
}

h2 {
    text-align: center;
    margin-bottom: 15px;
    color: #7B3F00;
}

.total-box {
    background: #f8f9fa;
    padding: 10px;
    text-align: center;
    font-size: 18px;
    font-weight: bold;
    border-radius: 8px;
    margin-bottom: 20px;
}

.qr {
    text-align: center;
    margin: 15px 0;
}

.btn-pay {
    width: 100%;
    background: #D2691E;
    color: white;
    padding: 10px;
    border: none;
    border-radius: 8px;
}

.btn-pay:hover {
    background: #a84d16;
}
</style>

</head>

<body>

<div class="payment-box">

    <h2>Select Payment Method</h2>

    <!-- ✅ CART TOTAL DISPLAY -->
    <div class="total-box">
        Total Amount: ₹ <%= total %>
    </div>

    <form action="OrderServlet" method="post">

        <!-- COD -->
        <div class="form-check mb-3">
            <input class="form-check-input" type="radio" name="payment" value="COD" checked>
            <label class="form-check-label">
                Cash on Delivery
            </label>
        </div>

        <!-- UPI -->
        <div class="form-check mb-2">
            <input class="form-check-input" type="radio" name="payment" value="UPI">
            <label class="form-check-label">
                UPI Payment 
            </label>
        </div>

        <!-- QR CODE -->
        <div class="qr">
            
            <p><small>Phone pay / Google pay</small></p>
        </div>

        <!-- ONLINE -->
        <div class="form-check mb-3">
            <input class="form-check-input" type="radio" name="payment" value="ONLINE">
            <label class="form-check-label">
                Online Payment (Card / Netbanking)
            </label>
        </div>

        <!-- Hidden status -->
        <input type="hidden" name="status" value="Pending">

        <!-- SUBMIT -->
        <button type="submit" class="btn-pay">
            Pay & Place Order
        </button>

    </form>

</div>

</body>
</html>