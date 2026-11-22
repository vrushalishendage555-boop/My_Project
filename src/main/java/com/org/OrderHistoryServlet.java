
package com.org;

import java.io.IOException;
import java.sql.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/OrderHistoryServlet")

public class OrderHistoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        // Check Login Session
        HttpSession session = request.getSession(false);

        if (session == null ||
            session.getAttribute("role") == null) {

            response.sendRedirect("Login.jsp");
            return;
        }

        String role = (String) session.getAttribute("role");
        String email = (String) session.getAttribute("email");

        List<Map<String, Object>> orderList =
            new ArrayList<>();

        String sql;

        // Admin can see all orders
        if ("admin".equalsIgnoreCase(role)) {

            sql = "SELECT * FROM orderss ORDER BY order_id DESC";

        }
        // User can see only their own orders
        else if ("user".equalsIgnoreCase(role)) {

            sql = "SELECT * FROM orderss WHERE email = ? ORDER BY order_id DESC";

        }
        else {

            response.sendRedirect("Login.jsp");
            return;
        }

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/bb62backend",
                    "root",
                    "vrushali1612");

                 PreparedStatement ps = con.prepareStatement(sql)) {

                // Apply email filter for normal users
                if ("user".equalsIgnoreCase(role)) {

                    ps.setString(1, email);
                }

                try (ResultSet rs = ps.executeQuery()) {

                    while (rs.next()) {

                        Map<String, Object> order =
                            new HashMap<>();

                        order.put("orderId",
                                  rs.getInt("order_id"));

                        order.put("name",
                                  rs.getString("user_name"));

                        order.put("email",
                                  rs.getString("email"));

                        order.put("contact",
                                  rs.getString("contact"));

                        order.put("address",
                                  rs.getString("address"));

                        order.put("total",
                                  rs.getDouble("total_amount"));

                        order.put("date",
                                  rs.getTimestamp("order_date"));

                        orderList.add(order);
                    }
                }
            }

            System.out.println(
                "Orders found: " + orderList.size());

            request.setAttribute("orders", orderList);

            request.getRequestDispatcher(
                "order-history.jsp").forward(request, response);

        } catch (Exception e) {

            e.printStackTrace();

            throw new ServletException(
                "Unable to retrieve order history", e);
        }
    }
}
