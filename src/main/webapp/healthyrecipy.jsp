<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Healthy Recipes | Gavran Khajina</title>

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

/* Recipe Card */
.recipe-card{
    background:white;
    padding:20px;
    border-radius:15px;
    box-shadow:0 3px 10px rgba(0,0,0,0.08);
    height:100%;
    transition:0.3s;
}

.recipe-card:hover{
    transform:translateY(-5px);
}

.title{
    font-size:20px;
    font-weight:bold;
    color:#2e7d32;
    margin-bottom:10px;
}

.subtitle{
    font-size:14px;
    color:#777;
    margin-bottom:10px;
}

ul{
    padding-left:18px;
    font-size:14px;
    color:#444;
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

        <h1>Healthy Traditional Recipes</h1>

        <p>Nutritious, low-oil and village-style healthy food options</p>

    </div>

</div>

<!-- RECIPES -->
<div class="container mt-4">

    <div class="row g-4">

        <!-- 1 -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🥗 Sprouted Moong Salad</div>
                <div class="subtitle">High protein healthy salad</div>
                <ul>
                    <li>Sprouted green gram</li>
                    <li>Onion</li>
                    <li>Tomato</li>
                    <li>Lemon juice</li>
                    <li>Salt & pepper</li>
                </ul>
            </div>
        </div>

        <!-- 2 -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🥣 Vegetable Dal Soup</div>
                <div class="subtitle">Light and nutritious soup</div>
                <ul>
                    <li>Toor dal</li>
                    <li>Carrot</li>
                    <li>Beans</li>
                    <li>Tomato</li>
                    <li>Turmeric & salt</li>
                </ul>
            </div>
        </div>

        <!-- 3 -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🌾 Jowar Khichdi</div>
                <div class="subtitle">Fiber-rich traditional meal</div>
                <ul>
                    <li>Jowar grains</li>
                    <li>Moong dal</li>
                    <li>Vegetables</li>
                    <li>Turmeric</li>
                    <li>Ghee (small quantity)</li>
                </ul>
            </div>
        </div>

        <!-- 4 -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🥛 Masala Buttermilk</div>
                <div class="subtitle">Cooling digestive drink</div>
                <ul>
                    <li>Curd</li>
                    <li>Water</li>
                    <li>Cumin powder</li>
                    <li>Salt</li>
                    <li>Coriander leaves</li>
                </ul>
            </div>
        </div>

        <!-- 5 -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🥬 Palak Bhaji</div>
                <div class="subtitle">Iron-rich spinach curry</div>
                <ul>
                    <li>Spinach (palak)</li>
                    <li>Garlic</li>
                    <li>Onion</li>
                    <li>Turmeric</li>
                    <li>Minimal oil</li>
                </ul>
            </div>
        </div>

        <!-- 6 -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🥒 Cucumber Salad</div>
                <div class="subtitle">Hydrating summer food</div>
                <ul>
                    <li>Cucumber</li>
                    <li>Onion</li>
                    <li>Lemon juice</li>
                    <li>Salt</li>
                    <li>Black pepper</li>
                </ul>
            </div>
        </div>

        <!-- 7 -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🍲 Vegetable Stew</div>
                <div class="subtitle">Low-oil healthy curry</div>
                <ul>
                    <li>Carrot</li>
                    <li>Beans</li>
                    <li>Potato</li>
                    <li>Green peas</li>
                    <li>Light spices</li>
                </ul>
            </div>
        </div>

        <!-- 8 -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🌰 Roasted Chana Snack</div>
                <div class="subtitle">Protein-rich evening snack</div>
                <ul>
                    <li>Roasted chana</li>
                    <li>Salt</li>
                    <li>Black pepper</li>
                    <li>Optional lemon</li>
                </ul>
            </div>
        </div>

    </div>

</div>

<!-- FOOTER -->
<div class="footer">
    <h5>🌿 Gavran Khajina</h5>
    <p>Healthy traditional food for better lifestyle</p>
</div>

</body>
</html>