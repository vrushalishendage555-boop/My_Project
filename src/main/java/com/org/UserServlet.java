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

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<String[]> users = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/bb62backend",
                "root",
                "vrushali1612"
            );

            String sql = "SELECT id, username, email, role FROM users";
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String[] user = new String[4];
                user[0] = rs.getString("id");
                user[1] = rs.getString("username");
                user[2] = rs.getString("email");
                user[3] = rs.getString("role");

                users.add(user);
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        req.setAttribute("users", users);
        req.getRequestDispatcher("users.jsp").forward(req, resp);
    }
}