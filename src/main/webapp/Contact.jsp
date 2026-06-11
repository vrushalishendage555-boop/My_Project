<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="./css/Style.css">
</head>
<body>
<!-- Contact Section Start -->
<section style="background: #fff8f0; padding:30px;">>
    <div class="container">
        
        <div class="text-center mb-5">
            <h2 class="fw-bold">Contact Us</h2>
            <p class="text-muted">
                We'd love to hear from you. Get in touch with Gavran Khajina.
            </p>
        </div>

        <div class="row">

            <!-- Contact Info -->
            <div class="col-md-5 mb-4">
                <div class="contact-info p-4 shadow rounded  h-100">

                    <h4 class="mb-4">Get In Touch</h4>

                    <p>
                        <strong>📍 Address:</strong><br>
                        Pune, Maharashtra, India
                    </p>

                    <p>
                        <strong>📞 Phone:</strong><br>
                        +91 8999214935
                    </p>

                    <p>
                        <strong>✉ Email:</strong><br>
                        vrushali.shendage555@gmail.com
                    </p>

                    <p>
                        <strong>🕒 Opening Hours:</strong><br>
                        Mon - Sun : 10:00 AM - 11:00 PM
                    </p>

                </div>
            </div>

            <!-- Contact Form -->
            <div class="col-md-7">
                <div class="contact-form p-4 shadow rounded">

                    <form action="ContactServlet" method="get">

                        <div class="mb-3">
                            <label class="form-label">Full Name</label>
                            <input type="text" name="name" class="form-control" placeholder="Enter your name" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email Address</label>
                            <input type="email" name="email" class="form-control" placeholder="Enter your email" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Subject</label>
                            <input type="text" name="subject" class="form-control" placeholder="Enter subject">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Message</label>
                            <textarea name="message" rows="5" class="form-control" placeholder="Write your message"></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary w-100">
                            Send Message
                        </button>

                    </form>

                </div>
            </div>

        </div>
    </div>
</section>
<!-- Contact Section End -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>