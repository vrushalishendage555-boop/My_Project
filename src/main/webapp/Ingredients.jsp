<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Natural Ingredients | Gavran Khajina</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    background:#fffaf3;
    font-family:Arial;
}

/* Navbar */
.navbar{
    background:#7B3F00;
    padding:15px 30px;
}

.navbar-brand{
    color:#f8c471 !important;
    font-size:28px;
    font-weight:bold;
}

.nav-link{
    color:white !important;
    margin-left:15px;
}

/* Header */
.header-box{
    background:white;
    margin-top:30px;
    padding:30px;
    border-radius:15px;
    text-align:center;
    box-shadow:0 5px 15px rgba(0,0,0,0.08);
}

.header-box h1{
    color:#7B3F00;
    font-weight:bold;
}

/* Ingredient Card */
.card-box{
    background:white;
    padding:20px;
    border-radius:15px;
    box-shadow:0 3px 10px rgba(0,0,0,0.08);
    height:100%;
    transition:0.3s;
}

.card-box:hover{
    transform:translateY(-5px);
}

.icon{
    font-size:28px;
}

.title{
    font-weight:bold;
    color:#A0522D;
    margin-top:10px;
}

.desc{
    font-size:14px;
    color:#666;
}

/* Footer */
.footer{
    background:#7B3F00;
    color:white;
    text-align:center;
    padding:20px;
    margin-top:50px;
}

</style>

</head>

<body>

<!-- NAVBAR -->
<nav class="navbar">

    <a class="navbar-brand" href="#">🌿 Gavran Khajina</a>

    <div class="ms-auto">
        <a class="nav-link d-inline" href="Home.jsp">Home</a>
        <a class="nav-link d-inline" href="Menu.jsp">Menu</a>
        <a class="nav-link d-inline" href="Contact.jsp">Contact</a>
    </div>

</nav>

<!-- HEADER -->
<div class="container">

    <div class="header-box">

        <h1>Natural Ingredients Used in Our Recipes</h1>

        <p>Fresh, traditional and healthy village-style cooking ingredients</p>

    </div>

</div>

<!-- INGREDIENTS -->
<div class="container mt-4">

    <div class="row g-4">

        <!-- Jowar Bhakri -->
        <div class="col-md-4">
            <div class="card-box text-center">
                <div class="icon">🌾</div>
                <div class="title">Jowar Flour</div>
                <div class="desc">Used for soft bhakri (traditional staple food)</div>
            </div>
        </div>

        <!-- Bajra -->
        <div class="col-md-4">
            <div class="card-box text-center">
                <div class="icon">🌾</div>
                <div class="title">Bajra Flour</div>
                <div class="desc">Healthy millet used in winter bhakri recipes</div>
            </div>
        </div>

        <!-- Rice -->
        <div class="col-md-4">
            <div class="card-box text-center">
                <div class="icon">🍚</div>
                <div class="title">Rice</div>
                <div class="desc">Used in varan-bhat and daily meals</div>
            </div>
        </div>

        <!-- Coconut -->
        <div class="col-md-4">
            <div class="card-box text-center">
                <div class="icon">🥥</div>
                <div class="title">Fresh Coconut</div>
                <div class="desc">Used in solkadhi, chutney & gravies</div>
            </div>
        </div>

        <!-- Kokum -->
        <div class="col-md-4">
            <div class="card-box text-center">
                <div class="icon">🫐</div>
                <div class="title">Kokum</div>
                <div class="desc">Main ingredient in solkadhi for sour taste</div>
            </div>
        </div>

        <!-- Garlic -->
        <div class="col-md-4">
            <div class="card-box text-center">
                <div class="icon">🧄</div>
                <div class="title">Garlic</div>
                <div class="desc">Enhances flavor in curries & masalas</div>
            </div>
        </div>

        <!-- Onion -->
        <div class="col-md-4">
            <div class="card-box text-center">
                <div class="icon">🧅</div>
                <div class="title">Onion</div>
                <div class="desc">Base for most traditional gravies</div>
            </div>
        </div>

        <!-- Red Chilli -->
        <div class="col-md-4">
            <div class="card-box text-center">
                <div class="icon">🌶️</div>
                <div class="title">Red Chilli</div>
                <div class="desc">Adds spicy taste to gavran dishes</div>
            </div>
        </div>

        <!-- Masala -->
        <div class="col-md-4">
            <div class="card-box text-center">
                <div class="icon">🧂</div>
                <div class="title">Homemade Masala</div>
                <div class="desc">Stone-ground spices for authentic taste</div>
            </div>
        </div>

    </div>

</div>

<!-- FOOTER -->
<div class="footer">
    <h5>🌿 Gavran Khajina</h5>
    <p>Pure ingredients, traditional recipes, real village taste</p>
</div>

</body>
</html>