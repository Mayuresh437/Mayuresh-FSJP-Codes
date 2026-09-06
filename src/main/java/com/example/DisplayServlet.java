package com.example;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.*;

@WebServlet("/name")
public class DisplayServlet extends GenericServlet {

    public void service(ServletRequest request, ServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String name = request.getParameter("myname");

        out.println("<h1>Welcome, I am " + name + "</h1>");
    }
}