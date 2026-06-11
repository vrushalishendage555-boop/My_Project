package com.org;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        try {

            // Load Driver
        	Class.forName("com.mysql.cj.jdbc.Driver");

            // Connection
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bb62backend","root","vrushali1612");

            // SQL Query
            String query = "insert into contact(name,email,subject,message) values(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, subject);
            ps.setString(4, message);

            int i = ps.executeUpdate();

            if(i > 0) {
                response.getWriter().println("Data Inserted Successfully");
            }
            else {
                response.getWriter().println("Data Not Inserted");
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}