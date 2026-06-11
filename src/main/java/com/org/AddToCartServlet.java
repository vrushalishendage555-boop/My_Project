package com.org;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/AddToCart")
public class AddToCartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        // GET CART FROM SESSION

        List<String> cart =
            (List<String>) session.getAttribute("cart");

        // CREATE NEW CART

        if (cart == null) {
            cart = new ArrayList<>();
        }

        // GET DATA

        String dish = request.getParameter("dish");
        String price = request.getParameter("price");

        // ADD ITEM

        if (dish != null && price != null) {

            cart.add(dish + "-" + price);

        }

        // SAVE BACK TO SESSION

        session.setAttribute("cart", cart);

        // MESSAGE

        session.setAttribute("msg",
            "Item Added To Cart Successfully");

        // DEBUG

        System.out.println("Cart Size: " + cart.size());

        // REDIRECT

        response.sendRedirect("Cart.jsp");
    }
}