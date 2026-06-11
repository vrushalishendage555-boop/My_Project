package com.org;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // Get session (if exists)
        HttpSession session = req.getSession(false);

        if (session != null) {
            session.invalidate(); // destroy session
        }

        // Redirect to login page
        resp.sendRedirect("Login.jsp");
    }
}