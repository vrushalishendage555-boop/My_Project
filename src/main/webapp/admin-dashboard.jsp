<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<%
String user=(String)session.getAttribute("name");
String role=(String)session.getAttribute("role");

if(user==null){
    response.sendRedirect("Login.jsp");
    return;
}

if(!"admin".equals(role)){
    response.sendRedirect("dashboard.jsp");
    return;
}

int totalUsers=0;
int totalOrders=0;
int totalDishes=0;

try{

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con=
DriverManager.getConnection(
"jdbc:mysql://localhost:3306/bb62backend",
"root",
"vrushali1612"
);

Statement st=con.createStatement();

ResultSet rs1=st.executeQuery(
"SELECT COUNT(*) FROM users"
);

if(rs1.next())
totalUsers=rs1.getInt(1);


ResultSet rs2=st.executeQuery(
"SELECT COUNT(*) FROM orders"
);

if(rs2.next())
totalOrders=rs2.getInt(1);


ResultSet rs3=st.executeQuery(
"SELECT COUNT(*) FROM menu_items11"
);

if(rs3.next())
totalDishes=rs3.getInt(1);

con.close();

}catch(Exception e){
out.println(e);
}
%>

<!DOCTYPE html>
<html>
<head>

<title>Admin Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">


<style>

body{
background: #fff8f0;
}

.sidebar{
width:250px;
height:100vh;
background:#212529;
position:fixed;
padding:20px;
}

.sidebar h2{
color:#fff;
margin-bottom:30px;
}

.sidebar a{
display:block;
padding:15px;
color:white;
text-decoration:none;
}

.sidebar a:hover{
background:#7B3F00;
border-radius:8px;
}

.main{
margin-left:270px;
padding:30px;
}

.card{
border:none;
border-radius:15px;
}
.main .card:hover {
    transform: translateY(-10px) scale(1.03);
    box-shadow: 0 0 20px rgba(0, 123, 255, 0.4);
   
}

.main .card h2 {
    font-size: 32px;
    font-weight: bold;
    color: #333;
}

.main .card p {
    margin: 0;
    font-size: 16px;
    color: gray;
}

</style>

</head>

<body>

<div class="sidebar">

<h2>🍲 Admin Panel</h2>

<a href="UserServlet">Users</a>
<a href="OrderServlet">Orders</a>
<a href="OrderHistoryServlet">Order History</a>
<a href="Menu.jsp">Dishes</a>
<a href="Contact.jsp">Contact</a>
<a href="dashboard.jsp">Dashboard</a>
</div>

<div class="main">

<h2>Welcome Admin, <%=user%></h2>

<div class="row mt-4">

<div class="col-md-4">
<div class="card p-4 text-center">
<h2><%=totalUsers%></h2>
<p>Total Users</p>
</div>
</div>

<div class="col-md-4">
<div class="card p-4 text-center">
<h2><%=totalOrders%></h2>
<p>Total Orders</p>
</div>
</div>

<div class="col-md-4">
<div class="card p-4 text-center">
<h2><%=totalDishes%></h2>
<p>Total Dishes</p>
</div>
</div>

</div>

</div>

</body>
</html>