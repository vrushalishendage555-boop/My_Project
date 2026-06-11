<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/Style.css">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

</head>
<body>

 <form action="LoginServlet" method="get" class="herosection">
 
     <div class="d-flex justify-content-center align-items-center h-100  ">
     
       <div class=" div1 d-flex justify-content-center align-items-center">
         <div class="mycard  sdiv m-5 p-5 text-center border border-dark rounded-3">
         <h1 class="mb-5 head1">Welcome to Gavran Khajina</h1>
        <input type="text"  name="username" placeholder="login" class="form-control mb-3 log">
        <input type="password" placeholder="password" name="password" class="form-control mb-3 pass">
       <div> <button type="submit" class=" btn btn-primary fs-5 px-4 button  ">Login</button></div>
        <br/>
        <div>
          <a href="Register.jsp" class="anc1 fs-5">Create New Account->Sign Up</a>
        </div>
        
       </div>
      </div>
     </div>





</form>
<script src="./js/Script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>