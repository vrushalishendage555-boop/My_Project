<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Authentic Recipes | Gavran Khajina</title>

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
    color:#A0522D;
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

        <h1>Authentic Village Recipes</h1>

        <p>Traditional Maharashtrian dishes with real ingredients</p>

    </div>

</div>

<!-- RECIPES -->
<div class="container mt-4">

    <div class="row g-4">

        <!-- 1 Solkadhi -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🥥 Solkadhi</div>
                <div class="subtitle">Cooling drink</div>
                <ul>
                    <li>Kokum</li>
                    <li>Coconut milk</li>
                    <li>Garlic</li>
                    <li>Green chilli</li>
                    <li>Cumin seeds</li>
                    <li>Salt</li>
                </ul>
            </div>
        </div>

        <!-- 2 Jowar Bhakri -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🌾 Jowar Bhakri</div>
                <div class="subtitle">Staple bread</div>
                <ul>
                    <li>Jowar flour</li>
                    <li>Warm water</li>
                    <li>Salt</li>
                    <li>Ghee</li>
                </ul>
            </div>
        </div>

        <!-- 3 Pithla -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🍛 Pithla</div>
                <div class="subtitle">Gram flour curry</div>
                <ul>
                    <li>Besan</li>
                    <li>Onion</li>
                    <li>Garlic</li>
                    <li>Green chilli</li>
                    <li>Turmeric</li>
                    <li>Curry leaves</li>
                </ul>
            </div>
        </div>

        <!-- 4 Varan Bhat -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🍚 Varan Bhat</div>
                <div class="subtitle">Simple meal</div>
                <ul>
                    <li>Toor dal</li>
                    <li>Rice</li>
                    <li>Turmeric</li>
                    <li>Ghee</li>
                    <li>Salt</li>
                </ul>
            </div>
        </div>

        <!-- 5 Peanut Chutney -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🥜 Peanut Chutney</div>
                <div class="subtitle">Dry chutney</div>
                <ul>
                    <li>Roasted peanuts</li>
                    <li>Red chilli</li>
                    <li>Garlic</li>
                    <li>Cumin seeds</li>
                    <li>Salt</li>
                </ul>
            </div>
        </div>

        <!-- 6 Thecha -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🌶️ Thecha</div>
                <div class="subtitle">Spicy chutney</div>
                <ul>
                    <li>Green chilli</li>
                    <li>Garlic</li>
                    <li>Peanuts</li>
                    <li>Salt</li>
                    <li>Oil</li>
                </ul>
            </div>
        </div>

        <!-- 7 MASWADI -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🍲 Maswadi</div>
                <div class="subtitle">Traditional spicy rolls</div>
                <ul>
                    <li>Gram flour (besan)</li>
                    <li>Onion</li>
                    <li>Garlic</li>
                    <li>Red chilli powder</li>
                    <li>Mustard seeds</li>
                    <li>Curry leaves</li>
                </ul>
            </div>
        </div>

        <!-- 8 CHAKOLYA -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🥣 Chakolya</div>
                <div class="subtitle">Rural wheat curry dish</div>
                <ul>
                    <li>Wheat flour dough pieces</li>
                    <li>Onion</li>
                    <li>Garlic</li>
                    <li>Turmeric</li>
                    <li>Green chilli</li>
                    <li>Curry leaves</li>
                </ul>
            </div>
        </div>

        <!-- 9 SANJA POLI -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🥞 Sanja Poli</div>
                <div class="subtitle">Soft traditional flatbread</div>
                <ul>
                    <li>Wheat flour</li>
                    <li>Milk or water</li>
                    <li>Ghee</li>
                    <li>Salt</li>
                </ul>
            </div>
        </div>

        <!-- 10 THALIPEETH -->
        <div class="col-md-6">
            <div class="recipe-card">
                <div class="title">🥞 Thalipeeth</div>
                <div class="subtitle">Multigrain pancake</div>
                <ul>
                    <li>Jowar flour</li>
                    <li>Bajra flour</li>
                    <li>Onion</li>
                    <li>Coriander</li>
                    <li>Cumin seeds</li>
                </ul>
            </div>
        </div>

    </div>

</div>

<!-- FOOTER -->
<div class="footer">
    <h5>🌿 Gavran Khajina</h5>
    <p>Authentic taste of Maharashtra villages</p>
</div>

</body>
</html>