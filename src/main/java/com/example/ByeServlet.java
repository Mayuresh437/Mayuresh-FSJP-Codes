package com.example;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.*;

@WebServlet("/bye")
public class ByeServlet extends GenericServlet {
    public void service(ServletRequest request, ServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>Goodbye from Servlet</h1>");
    }
}
