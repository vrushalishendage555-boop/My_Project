package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String name = req.getParameter("username");
        String number = req.getParameter("number");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        String pass = req.getParameter("password");
        String cpass = req.getParameter("cpass");

        resp.setContentType("text/html");

        PrintWriter out = resp.getWriter();

        // VALIDATION

        if (name == null || number == null || email == null ||
            address == null || pass == null || cpass == null ||

            name.isEmpty() || number.isEmpty() ||
            email.isEmpty() || address.isEmpty() ||
            pass.isEmpty() || cpass.isEmpty()) {

            out.println("<script>");
            out.println("alert('All fields are required');");
            out.println("window.location='Register.jsp';");
            out.println("</script>");

            return;
        }

        // PASSWORD CHECK

        if (!pass.equals(cpass)) {

            out.println("<script>");
            out.println("alert('Passwords do not match');");
            out.println("window.location='Register.jsp';");
            out.println("</script>");

            return;
        }

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/bb62backend",
                "root",
                "vrushali1612"
            );

            // CHECK DUPLICATE USER

            String checkSql =
                "SELECT * FROM users WHERE username=?";

            PreparedStatement checkPs =
                con.prepareStatement(checkSql);

            checkPs.setString(1, name);

            ResultSet rs = checkPs.executeQuery();

            if (rs.next()) {

                out.println("<script>");
                out.println("alert('Username already exists');");
                out.println("window.location='Register.jsp';");
                out.println("</script>");

                return;
            }

            // INSERT USER

            String sql =
                "INSERT INTO users(username, number, email, address, password, role) VALUES (?, ?, ?, ?, ?, 'user')";

            PreparedStatement ps =
                con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, number);
            ps.setString(3, email);
            ps.setString(4, address);
            ps.setString(5, pass);

            int i = ps.executeUpdate();

            if (i > 0) {

                out.println("<script>");
                out.println("alert('Registered Successfully');");
                out.println("window.location='Login.jsp';");
                out.println("</script>");

            } else {

                out.println("<script>");
                out.println("alert('Registration Failed');");
                out.println("</script>");
            }

            con.close();

        } catch (Exception e) {

            e.printStackTrace();
            out.println(e.getMessage());
        }
    }
}