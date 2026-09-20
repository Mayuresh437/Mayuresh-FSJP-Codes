package com.example;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/exp5db",
                    "root",
                    "Mayuresh#437");

            Statement stmt = con.createStatement();

            String sql = "SELECT * FROM userdata WHERE Email='" + email +
                    "' AND Password='" + pass + "'";

            ResultSet rs = stmt.executeQuery(sql);

            if (rs.next()) {
                HttpSession session = request.getSession();
                // session.setAttribute("user", email);
                session.setAttribute("name", rs.getString("Name"));
                session.setAttribute("email", rs.getString("Email"));

                response.sendRedirect("dashboard.jsp");
            } else {
                response.sendRedirect("login.jsp?error=1");
            }
            
            rs.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=1");
        }
    }
}