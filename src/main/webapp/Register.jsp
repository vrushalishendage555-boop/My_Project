<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="./css/Style.css">

</head>

<body>

<form action="RegisterServlet" method="get" class="herosection">

    <div class="d-flex justify-content-center align-items-center h-100">

        <div class="div1 d-flex justify-content-center align-items-center">

            <div class="mycard sdiv m-5 p-5 text-center border border-dark rounded-3">

                <h1 class="mb-5 head1">
                    Welcome to Gavran Khajina
                </h1>

                <!-- USERNAME -->

                <input type="text"
                       name="username"
                       placeholder="Username"
                       class="form-control mb-3"
                       required>

                <!-- PHONE -->

                <input type="text"
                       name="number"
                       pattern="[0-9]{10}"
                       maxlength="10"
                       placeholder="Phone Number"
                       class="form-control mb-3"
                       required>

                <!-- EMAIL -->

                <input type="email"
                       name="email"
                       placeholder="Email"
                       class="form-control mb-3"
                       required>

                <!-- ADDRESS -->

                <input name="address"
                          placeholder="Address"
                          class="form-control mb-3"
                          required>

                <!-- PASSWORD -->

                <input type="password"
                       name="password"
                       placeholder="Password"
                       class="form-control mb-3"
                       required>

                <!-- CONFIRM PASSWORD -->

                <input type="password"
                       name="cpass"
                       placeholder="Confirm Password"
                       class="form-control mb-3"
                       required>

                <!-- BUTTON -->

                <button type="submit"
                        class="btn btn-success fs-5 px-4">

                    Register

                </button>

                <br><br>

                <a href="Login.jsp" class="anc1 fs-5">

                    Already have an account → Login

                </a>

            </div>

        </div>

    </div>

</form>

</body>
</html>