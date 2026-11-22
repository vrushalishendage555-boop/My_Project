
package com.org;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        String name = req.getParameter("username");
        String pass = req.getParameter("password");

        if (name == null || pass == null ||
            name.trim().isEmpty() || pass.trim().isEmpty()) {

            resp.sendRedirect("Login.jsp");
            return;
        }

        String sql =
            "SELECT * FROM users WHERE username=? AND password=?";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/bb62backend",
                    "root",
                    "vrushali1612");

                 PreparedStatement ps = con.prepareStatement(sql)) {

                ps.setString(1, name.trim());
                ps.setString(2, pass.trim());

                try (ResultSet rs = ps.executeQuery()) {

                    if (rs.next()) {

                        String role = rs.getString("role");

                        if (role == null ||
                            (!"admin".equalsIgnoreCase(role) &&
                             !"user".equalsIgnoreCase(role))) {

                            resp.sendRedirect("Login.jsp");
                            return;
                        }

                        HttpSession oldSession = req.getSession(false);

                        if (oldSession != null) {
                            oldSession.invalidate();
                        }

                        HttpSession session = req.getSession(true);

                        session.setAttribute("role",
                                             role.toLowerCase());

                        session.setAttribute("email",
                                             rs.getString("email"));

                        session.setAttribute("contact",
                                             rs.getString("number"));

                        session.setAttribute("address",
                                             rs.getString("address"));

                        if ("admin".equalsIgnoreCase(role)) {

                            session.setAttribute("name", "Vrushali");
                            session.setAttribute("adminName", "Vrushali");

                            resp.sendRedirect("admin-dashboard.jsp");

                        } else {

                            session.setAttribute("name",
                                                 rs.getString("username"));

                            resp.sendRedirect("dashboard.jsp");
                        }

                    } else {

                        resp.sendRedirect("Login.jsp?error=invalid");
                    }
                }

            }

        } catch (Exception e) {

            e.printStackTrace();
            resp.sendRedirect("Login.jsp?error=server");
        }
    }
}
