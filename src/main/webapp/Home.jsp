<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="./css/Style.css">
</head>
<body>


<!-- NAVBAR -->
 <header class="text-center my-4">
    
    <span class="gradient-text">Gavran Khajina</span>
  </header>
<section class="hero container-fluid mb-5">


  <video autoplay muted loop class="hero-video">
    <source src="./video/cooking.mp4" type="video/mp4">
</video>
<nav class="navbar navbar-expand-lg navbar-dark custom-navbar fixed-top">
<div class="container">

<a class="navbar-brand d-flex  justify-content-center align-items-center" href="#">


<img src="./images/illustration/logo img.jpg" alt="Gavran Khajina Logo" class="logo  logoimg">
<span class="brand-text fs-2">Gavran Khajina</span>

</a>

<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navmenu">
<span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="navmenu">

<ul class="navbar-nav ms-auto text-center" style="font-size: 18px;">

<li class="nav-item">
<a class="nav-link" href="Home.jsp">Home</a>
</li>

<li class="nav-item">
<a class="nav-link" href="Menu.jsp">Menu</a>
</li>

<li class="nav-item">
<a class="nav-link" href="Contact.jsp">Contact</a>
</li>
<li class="nav-item">
    <a class="nav-link" href="Cart.jsp">Cart </a>
    
</li>
<li class="nav-item">
    <a class="nav-link" href="OrderHistoryServlet">My Orders</a>
</li>

</ul>

</div>

</div>
</nav>

</section>

<!-- section 2 about -->

<section class="container-fluid sec2-about py-5">

<div class="container">

<div class="row align-items-center mb-5">

<div class="col-lg-6">
<img src="./images/illustration/img1.png" class="img-fluid rounded shadow">
</div>

<div class="col-lg-6">

<h2 class="about-title">About Gavran Khajina</h2>

<p class="about-text">
Gavran Khajina is a platform that celebrates the authentic flavors
of traditional Maharashtrian village food. These dishes are made
with simple ingredients, natural spices, and traditional cooking
methods that have been followed in villages for generations.
</p>

<p class="about-text">
From Bhakri and Pithla to Zunka and Bharli Vangi, every dish
represents the warmth, culture, and heritage of rural Maharashtra.
Our goal is to bring the true taste of gavran cuisine to everyone.
</p>

<a href="Menu.jsp" class="btn btn-warning btn-lg w-100">
    🍛 Explore Dishes
</a>

</div>

</div>

<!-- FEATURES -->

<div class="row text-center g-4">

<div class="col-md-4">
<a href="Ingredients.jsp" class="text-decoration-none">
<div class="feature-box">
<h4>🌾 Organic Ingredients</h4>
<p>Fresh farm ingredients used in traditional cooking.</p>
</div>
</a>
</div>

<div class="col-md-4">
<a href="recipies.jsp" class="text-decoration-none">
<div class="feature-box">
<h4>🍲 Authentic Recipes</h4>
<p>Village recipes passed down through generations.</p>
</div>
</a>
</div>

<div class="col-md-4">
<a href="healthyrecipy.jsp" class="text-decoration-none">
<div class="feature-box">
<h4>❤️ Healthy Food</h4>
<p>Simple, nutritious, and homemade gavran meals.</p>
</div>
</a>
</div>

</div>

</div>

</section>

<!-- Section 3: App Features -->

<section class="container-fluid sec3 py-5">

<div class="container text-center">

<h2 class="sec3-title mb-3">App Features</h2>
<p class="sec3-subtitle mb-5">
Discover authentic gavran dishes and traditional recipes easily.
</p>

<div class="row g-4">

<!-- Feature 1 -->
<div class="col-lg-3 col-md-6">

<div class="feature-card">
<div class="icon">🍛</div>
<h5>Discover Gavran Dishes</h5>
<p>Explore a variety of traditional Maharashtrian village dishes.</p>
</div>
</div>

<!-- Feature 2 -->
<div class="col-lg-3 col-md-6">

<div class="feature-card">
<div class="icon">📖</div>
<h5>Traditional Recipes</h5>
<p>Learn step-by-step recipes for authentic gavran food.</p>
</div>
</div>

<!-- Feature 3 -->
<div class="col-lg-3 col-md-6">

<div class="feature-card">
<div class="icon">❤️</div>
<h5>Save Favorites</h5>
<p>Save your favorite dishes and recipes for quick access.</p>
</div>
</div>

<!-- Feature 4 -->
<div class="col-lg-3 col-md-6">

<div class="feature-card">
<div class="icon">🚚</div>
<h5>Order Homemade Food</h5>
<p>Enjoy fresh homemade gavran meals easily.</p>
</div>
</div>

</div>

</div>

</section>


<footer class="footer">
    
    <p>Organic • Authentic • Healthy Food</p>
    <p class="copy">© 2026 All Rights Reserved</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>