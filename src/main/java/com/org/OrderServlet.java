package com.org;

import java.io.IOException;
import java.sql.*;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        // ===== USER DATA =====
        String name = (String) session.getAttribute("name");
        String email = (String) session.getAttribute("email");
        String contact = (String) session.getAttribute("contact");
        String address = (String) session.getAttribute("address");
        System.out.println("Logged User: " + name);
        System.out.println("Logged Email: " + email);

        // ===== CART =====
        List<String> cart = (List<String>) session.getAttribute("cart");

        if (cart == null || cart.isEmpty()) {
            response.sendRedirect("Cart.jsp");
            return;
        }

        // ===== PAYMENT METHOD =====
        String payment = request.getParameter("payment");

        if (payment == null) {
            payment = "COD";
        }

        String paymentStatus = "";

        if (payment.equals("COD")) {
            paymentStatus = "Cash on Delivery";
        } else if (payment.equals("UPI")) {
            paymentStatus = "UPI Paid";
        } else {
            paymentStatus = "Online Payment";
        }

        // ===== TOTAL CALCULATION =====
        int total = 0;
        for (String item : cart) {
            total += Integer.parseInt(item.split("-")[1]);
        }

        // ===== DATABASE INSERT =====
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/bb62backend",
                    "root",
                    "vrushali1612"
            );

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO orderss(user_name, email, contact, address, total_amount, payment_method) VALUES(?,?,?,?,?,?)"
            );

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, contact);
            ps.setString(4, address);
            ps.setInt(5, total);
            ps.setString(6, paymentStatus);

            ps.executeUpdate();

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        // ===== CLEAR CART =====
        session.removeAttribute("cart");

        // ===== SUCCESS MESSAGE =====
        session.setAttribute("msg", "Order Placed Successfully with " + paymentStatus);


response.sendRedirect("success.jsp");
    }

    // Optional safety (if someone hits GET directly)
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("Cart.jsp");
    }
}