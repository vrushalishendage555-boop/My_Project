package com.org;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String name = req.getParameter("username");
        String pass = req.getParameter("password");

        if (name == null || pass == null) {
            resp.sendRedirect("Login.jsp");
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/bb62backend",
                "root",
                "vrushali1612"
            );

            String sql = "SELECT * FROM users WHERE username=? AND password=?";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name.trim());
            ps.setString(2, pass.trim());

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                String role = rs.getString("role");

                HttpSession session = req.getSession();

                session.setAttribute("name", rs.getString("username"));
                session.setAttribute("email", rs.getString("email"));
                session.setAttribute("contact", rs.getString("number"));
                session.setAttribute("address", rs.getString("address"));
                session.setAttribute("role", role);

                // ROLE BASED REDIRECT
                if ("admin".equalsIgnoreCase(role)) {
                    resp.sendRedirect("admin-dashboard.jsp");
                } else {
                    resp.sendRedirect("dashboard.jsp");
                }

            } else {

                resp.setContentType("text/html");
                resp.getWriter().println("<script>");
                resp.getWriter().println("alert('Invalid Username or Password');");
                resp.getWriter().println("window.location='Login.jsp';");
                resp.getWriter().println("</script>");
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}