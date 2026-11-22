
package com.org;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/UserServlet")

public class UserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        // Check Admin Session
        HttpSession session = req.getSession(false);

        if (session == null ||
            !"admin".equalsIgnoreCase(
                (String) session.getAttribute("role"))) {

            resp.sendRedirect("Login.jsp");
            return;
        }

        // Store all users
        List<String[]> users = new ArrayList<>();

        String sql =
            "SELECT id, username, email, role FROM users";

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/bb62backend",
                    "root",
                    "vrushali1612");

                 PreparedStatement ps = con.prepareStatement(sql);

                 ResultSet rs = ps.executeQuery()) {

                while (rs.next()) {

                    String[] user = new String[4];

                    user[0] = rs.getString("id");
                    user[1] = rs.getString("username");
                    user[2] = rs.getString("email");
                    user[3] = rs.getString("role");

                    users.add(user);
                }
            }

            // Send users to JSP page
            req.setAttribute("users", users);

            req.getRequestDispatcher("users.jsp")
               .forward(req, resp);

        } catch (Exception e) {

            e.printStackTrace();

            throw new ServletException(
                "Unable to retrieve registered users", e);
        }
    }
}
