<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Explore Our Menu</title>

<!-- Bootstrap -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">



<link rel="stylesheet" href="./css/Style.css">

</head>

<%

String msg = (String) session.getAttribute("msg");

if (msg != null) {

%>

    <div class="alert alert-success text-center">

        <%= msg %>

    </div>

<%

    session.removeAttribute("msg");

}

%>

<body>

<!-- section 4  dishes -->



<section class="container-fluid sec4 py-5">



<div class="container">



<h2 class="text-center sec4-title mb-5">Explore Our Menu</h2>



<!-- CATEGORY BUTTONS -->



<div class="category-menu text-center mb-5">



<a href="#maincourse" class="category-btn">Main Course</a>

<a href="#bhakri" class="category-btn">Bhakri</a>

<a href="#poli" class="category-btn">Poli</a>

<a href="#dessert" class="category-btn">Dessert</a>

<a href="#drinks" class="category-btn">Soft Drinks</a>



</div>



<!-- MAIN COURSE -->



<h3 id="maincourse" class="category-title">Main Course</h3>



<div class="row g-4 mb-5">



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/pitla-bhakri.jpg">

<h5>पिठलं-भाकरी</h5>

<p>Category:Main Course</p>

<span class="price">₹90</span>

<a href="AddToCart?dish=Pithla Bhakri&price=90" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/thecha.png">

<h5>ठेचा-भाकरी</h5>

<p>Category:Main Course</p>

<span class="price">₹50</span>

<a href="AddToCart?dish=Thecha Bhakri&price=80"

   class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/masvadi.webp">

<h5>मसवडी</h5>

<p>Category:Main Course</p>

<span class="price">₹85</span>

<a href="AddToCart?dish=Masvadi&price=85"

   class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/Aluvadi.jpg">

<h5>अळूवडी</h5>

<p>Category:Main Course</p>

<span class="price">₹45</span>

<a href="AddToCart?dish=Aluvadi&price=45"

   class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/shengolya.webp">

<h5>शेंगोळ्या</h5>

<p>Category:Main Course</p>

<span class="price">₹55</span>

<a href="AddToCart?dish=shengolya&price=55"class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/kadhi.webp">

<h5>कढी</h5>

<p>Category:Main Course</p>

<span class="price">₹40</span>

<a href="AddToCart?dish=Kadhi&price=40" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/harbhara.jpg">

<h5>हरभऱ्याची सुकी भाजी</h5>

<p>Category:Main Course</p>

<span class="price">₹90</span>

<a href="AddToCart?dish=Green Chickpeastir Fry&price=90" class="btn btn-danger">Add to Cart</a>

</div>

</div>





<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/dalkanda.webp">

<h5>डाळकांदा</h5>

<p>Category:Main Course</p>

<span class="price">₹60</span>

<a href="AddToCart?dish=Dalkanda&price=60" class="btn btn-danger">Add to Cart</a>

</div>

</div>





<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/Kulith usal.jpg">

<h5>कुळीथ (हुलगा) उसळ</h5>

<p>Category:Main Course</p>

<span class="price">₹95</span>

<a href="AddToCart?dish=Kulith(Hulga) Usal&price=95" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/kothimbvir vadi.png">

<h5>कोथिंबीर वडी</h5>

<p>Category:Main Course</p>

<span class="price">₹55</span>

<a href="AddToCart?dish=Kothimbir Vadi&price=55" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/sandga.jpg">

<h5>सांदगे भाजी</h5>

<p>Category:Main Course</p>

<span class="price">₹40</span>

<a href="AddToCart?dish=Sandga Bhajil&price=40" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/kurdai.jpeg">

<h5>कुरडई भाजी</h5>

<p>Category:Main Course</p>

<span class="price">₹40</span>

<a href="AddToCart?dish=Kurdai Bhaji&price=40" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/chakolya.webp">

<h5>चकोल्या</h5>

<p>Category:Main Course</p>

<span class="price">₹50</span>

<a href="AddToCart?dish=Chakolya&price=50" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/ambada bhaji.jpg">

<h5>आंबाडा भाजी</h5>

<p>Category:Main Course</p>

<span class="price">₹45</span>

<a href="AddToCart?dish=Ambada Bhaji&price=45" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/amati.jpg">

<h5>बाजरीची आमटी</h5>

<p>Category:Main Course</p>

<span class="price">₹40</span>

<a href="AddToCart?dish=Bajar Amati&price=40" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/main course/methi besan4.jpg">

<h5>मेथी बेसन</h5>

<p>Category:Main Course</p>

<span class="price">₹50</span>

<a href="AddToCart?dish=Methi Besan&price=50" class="btn btn-danger">Add to Cart</a>

</div>

</div>



</div>



<!-- BHAKRI -->



<h3 id="bhakri" class="category-title ">Bhakri</h3>



<div class="row g-4 mb-5">



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/bhakri/bajri.jpg">

<h5>बाजरीची भाकरी</h5>

<span class="price">₹25</span>

<a href="AddToCart?dish=Bajri Bhakri&price=25" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/bhakri/jwari.webp">

<h5>ज्वारीची भाकरी</h5>

<span class="price">₹35</span>

<a href="AddToCart?dish=Jwari Bhakri&price=35" class="btn btn-danger">Add to Cart</a>

</div>

</div>





<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/bhakri/nachni.png">

<h5>नाचणीची भाकरी</h5>

<span class="price">₹40</span>

<a href="AddToCart?dish=Nachani Bhakri&price=40" class="btn btn-danger"">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/bhakri/mix.jpg">

<h5>मिश्र धान्याची भाकरी</h5>

<span class="price">₹50</span>

<a href="AddToCart?dish=Mix Millet Bhakri&price=50" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/bhakri/MakkaBhakri.JPG">

<h5>मक्याची भाकरी</h5>

<span class="price">₹30</span>

<a href="AddToCart?dish=Makka Bhakri&price=30" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/bhakri/rice.webp">

<h5>तांदळाची भाकरी</h5>

<span class="price">₹40</span>

<a href="AddToCart?dish=Rice Bhakri&price=40" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/bhakri/thalipeeth.jpg">

<h5>थालीपीठ (२ नग)</h5>

<span class="price">₹80</span>

<a href="AddToCart?dish=Thalipeeth&price=80" class="btn btn-danger">Add to Cart</a>

</div>

</div>



</div>



<!-- POLI -->



<h3 id="poli" class="category-title">Poli</h3>



<div class="row g-4 mb-5">



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/poli/puranpoli.webp">

<h5>पुरणपोळी</h5>

<span class="price">₹35 per piece</span>

<a href="AddToCart?dish=Puran Poli&price=35" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/poli/gulpoli.jpg">

<h5>गूळपोळी</h5>

<span class="price">₹25 per piece</span>

<a href="AddToCart?dish=Gul Poli&price=25" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/poli/tilpoli.webp">

<h5>तिळपोळी</h5>

<span class="price">₹35 per piece</span>

<a href="AddToCart?dish=Til Poli&price=35" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/poli/sanjachi poli.jpg">

<h5>सांजाची पोळी</h5>

<span class="price">₹35 per piece</span>

<a href="AddToCart?dish=Sanja Poli&price=35" class="btn btn-danger">Add to Cart</a>

</div>

</div>





<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/poli/shengapoli.jpg">

<h5>शेंगापोळी</h5>

<span class="price">₹45 per piece</span>

<a href="AddToCart?dish=Shenga Poli&price=45" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/poli/khawaoli.webp">

<h5>खव्याची पोळी</h5>

<span class="price">₹55 per piece</span>

<a href="AddToCart?dish=Khawa Poli&price=55" class="btn btn-danger">Add to Cart</a>

</div>

</div>

</div>



<!-- DESSERT -->



<h3 id="dessert" class="category-title">Dessert</h3>



<div class="row g-4 mb-5">



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/desert/lapshi.jpg">

<h5>लापशी</h5>

<span class="price">₹90</span>

<a href="AddToCart?dish=Lapashi(Daliya)&price=90" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/desert/gavhachi khir.jpg">

<h5>गव्हाची खीर</h5>

<span class="price">₹100</span>

<a href="AddToCart?dish=Gavhachi kheer&price=100" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/desert/damtyache ladoo.jpg">

<h5>दामट्याचे लाडू</h5>

<span class="price">₹80</span>

<a href="AddToCart?dish=Damatyache Ladoo&price=80" class="btn btn-danger">Add to Cart</a>

</div>

</div>





<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/desert/gul shira.jpg">

<h5>गूळ शिरा</h5>

<span class="price">₹50</span>

<a href="AddToCart?dish=Gul Sheera&price=50" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/desert/kaliche ladoo.webp">

<h5>काळीचे लाडू (४ नग)</h5>

<span class="price">₹100</span>

<a href="AddToCart?dish=Kaliche Ladoo&price=100" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/desert/shengdana vadi.webp">

<h5>शेंगदाणा वडी</h5>

<span class="price">₹30</span>

<a href="AddToCart?dish=Peanut Vadi&price=30" class="btn btn-danger">Add to Cart</a>

</div>

</div>



</div>



<!-- SOFT DRINKS -->



<h3 id="drinks" class="category-title">Soft Drinks</h3>



<div class="row g-4">



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/drinks/solkadhi.jpg">

<h5>सोलकढी</h5>

<span class="price">₹40</span>

<a href="AddToCart?dish=Solkahdi&price=40" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/drinks/masala tak.jpg">

<h5>मसाला ताक</h5>

<span class="price">₹30</span>

<a href="AddToCart?dish=Masala Tak&price=30" class="btn btn-danger">Add to Cart</a>

</div>

</div>





<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/drinks/kairi panhe.png">

<h5>कैरीचे पन्हे</h5>

<span class="price">₹25</span>

<a href="AddToCart?dish=Kairi Panhe&price=25" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/drinks/jaljeera.png">

<h5>जलजीरा</h5>

<span class="price">₹35</span>

<a href="AddToCart?dish=Jaljeera&price=35" class="btn btn-danger">Add to Cart</a>

</div>

</div>





<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/drinks/sugar.png">

<h5>उसाचा रस</h5>

<span class="price">₹20</span>

<a href="AddToCart?dish=Sugarcane Juice&price=20" class="btn btn-danger">Add to Cart</a>

</div>

</div>



<div class="col-lg-3 col-md-6">

<div class="food-card">

<img src="./images/illustration/drinks/kokum.png">

<h5>कोकम सरबत</h5>

<span class="price">₹30</span>

<a href="AddToCart?dish=Kokum Sarbat&price=30" class="btn btn-danger">Add to Cart</a>

</div>

</div>



</div>



</div>



</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>



</body>

</html>