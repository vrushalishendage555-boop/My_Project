
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%
List<String> cart = (List<String>) session.getAttribute("cart");

int total = 0;

if (cart != null) {
    for (String item : cart) {
        String[] data = item.split("-");
        total += Integer.parseInt(data[1]);
    }
}

if (cart == null || cart.isEmpty()) {
    response.sendRedirect("Cart.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Gavran Khajina - Payment</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>
body {
    background: linear-gradient(135deg, #fff7ed, #fce4c8);
    font-family: Arial, sans-serif;
    min-height: 100vh;
    margin: 0;
}

.navbar {
    background: #212529;
    padding: 15px 25px;
}

.navbar-brand {
    color: white;
    font-size: 23px;
    font-weight: bold;
}

.payment-container {
    max-width: 650px;
    margin: 45px auto;
    padding: 15px;
}

.payment-box {
    background: white;
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.13);
}

.heading {
    text-align: center;
    color: #7B3F00;
    font-weight: bold;
    margin-bottom: 8px;
}

.subtitle {
    text-align: center;
    color: #777;
    margin-bottom: 25px;
}

.total-box {
    background: linear-gradient(135deg, #7B3F00, #D2691E);
    color: white;
    padding: 22px;
    border-radius: 15px;
    text-align: center;
    margin-bottom: 28px;
}

.total-box h2 {
    font-size: 32px;
    font-weight: bold;
    margin: 5px 0 0;
}

.section-title {
    font-size: 19px;
    font-weight: bold;
    margin-bottom: 15px;
    color: #333;
}

.payment-option {
    display: flex;
    align-items: center;
    gap: 13px;
    border: 2px solid #e5e5e5;
    padding: 16px;
    border-radius: 13px;
    margin-bottom: 13px;
    cursor: pointer;
    transition: 0.25s;
}

.payment-option:hover {
    border-color: #D2691E;
    background: #fffaf5;
}

.payment-option:has(input:checked) {
    border-color: #D2691E;
    background: #fff4e8;
    box-shadow: 0 3px 10px rgba(210,105,30,0.12);
}

.payment-option input {
    width: 19px;
    height: 19px;
    accent-color: #D2691E;
    flex-shrink: 0;
}

.payment-icon {
    font-size: 28px;
}

.payment-name {
    font-weight: bold;
    font-size: 16px;
    color: #333;
}

.payment-desc {
    font-size: 13px;
    color: #777;
    margin-top: 4px;
}

.payment-note {
    display: none;
    background: #fff7ed;
    border-left: 4px solid #D2691E;
    padding: 12px;
    border-radius: 8px;
    font-size: 13px;
    margin: -5px 0 14px 48px;
    color: #6b4425;
}

.btn-pay {
    width: 100%;
    background: linear-gradient(135deg, #D2691E, #a84d16);
    color: white;
    padding: 14px;
    border: none;
    border-radius: 10px;
    font-size: 17px;
    font-weight: bold;
    margin-top: 15px;
    transition: 0.3s;
}

.btn-pay:hover {
    background: #8f4213;
    transform: translateY(-2px);
}

.secure-note {
    text-align: center;
    color: #777;
    font-size: 13px;
    margin-top: 20px;
}

@media(max-width: 576px) {
    .payment-container {
        margin: 20px auto;
    }

    .payment-box {
        padding: 20px;
    }
}
</style>
</head>

<body>

<nav class="navbar">
    <span class="navbar-brand">🍲 Gavran Khajina</span>
</nav>

<div class="payment-container">

<div class="payment-box">

    <h2 class="heading">💳 Payment Details</h2>
    <p class="subtitle">Complete your order with your preferred payment method</p>

    <div class="total-box">
        <div>YOUR TOTAL AMOUNT</div>
        <h2>₹ <%= total %></h2>
    </div>

    <div class="section-title">Select Payment Method</div>

    <form action="OrderServlet" method="post">

        <!-- CASH ON DELIVERY -->
        <label class="payment-option">
            <input type="radio" name="payment" value="COD" checked
                   onchange="showPaymentNote()">

            <span class="payment-icon">💵</span>

            <div>
                <div class="payment-name">Cash on Delivery</div>
                <div class="payment-desc">Pay when your food is delivered</div>
            </div>
        </label>

        <div class="payment-note" id="codNote">
            You can pay the amount directly when your order arrives.
        </div>

        <!-- UPI -->
        <label class="payment-option">
            <input type="radio" name="payment" value="UPI"
                   onchange="showPaymentNote()">

            <span class="payment-icon">📱</span>

            <div>
                <div class="payment-name">UPI Payment</div>
                <div class="payment-desc">PhonePe / Google Pay / Paytm</div>
            </div>
        </label>

        <div class="payment-note" id="upiNote">
            UPI payment option selected. Actual payment requires UPI gateway integration.
        </div>

        <!-- ONLINE -->
        <label class="payment-option">
            <input type="radio" name="payment" value="ONLINE"
                   onchange="showPaymentNote()">

            <span class="payment-icon">💳</span>

            <div>
                <div class="payment-name">Card / Net Banking</div>
                <div class="payment-desc">Online payment option</div>
            </div>
        </label>

        <div class="payment-note" id="onlineNote">
            Online payment option selected. Actual payment requires payment gateway integration.
        </div>

        <input type="hidden" name="status" value="Pending">

        <button type="submit" class="btn-pay">
            Pay & Place Order →
        </button>

    </form>

    <div class="secure-note">
        🔒 Secure Checkout | Thank you for choosing Gavran Khajina!
    </div>

</div>
</div>

<script>
function showPaymentNote() {

    document.getElementById("codNote").style.display = "none";
    document.getElementById("upiNote").style.display = "none";
    document.getElementById("onlineNote").style.display = "none";

    const selected = document.querySelector(
        'input[name="payment"]:checked'
    );

    if (selected.value === "COD") {
        document.getElementById("codNote").style.display = "block";
    } else if (selected.value === "UPI") {
        document.getElementById("upiNote").style.display = "block";
    } else if (selected.value === "ONLINE") {
        document.getElementById("onlineNote").style.display = "block";
    }
}

showPaymentNote();
</script>

</body>
</html>
