package com.org;

import java.io.IOException;
import java.sql.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/OrderHistoryServlet")
public class OrderHistoryServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Map<String, Object>> orderList = new ArrayList<>();

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/bb62backend",
                    "root",
                    "vrushali1612"
            );

            String sql = "SELECT * FROM orderss ORDER BY order_id DESC";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Map<String, Object> order = new HashMap<>();

                order.put("orderId", rs.getInt("order_id"));
                order.put("name", rs.getString("user_name"));
                order.put("email", rs.getString("email"));
                order.put("contact", rs.getString("contact"));
                order.put("address", rs.getString("address"));
                order.put("total", rs.getDouble("total_amount"));
                order.put("date", rs.getTimestamp("order_date"));

                orderList.add(order);
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println("Orders found: " + orderList.size());

        request.setAttribute("orders", orderList);
        request.getRequestDispatcher("order-history.jsp").forward(request, response);
    }
}