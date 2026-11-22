
package com.org;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LogoutServlet")

public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        // Get existing session
        HttpSession session = req.getSession(false);

        // Destroy session
        if (session != null) {
            session.invalidate();
        }

        // Prevent browser from displaying cached pages
        resp.setHeader("Cache-Control",
                       "no-cache, no-store, must-revalidate");

        resp.setHeader("Pragma", "no-cache");

        resp.setDateHeader("Expires", 0);

        // Redirect to Login Page
        resp.sendRedirect("Login.jsp");
    }
}
