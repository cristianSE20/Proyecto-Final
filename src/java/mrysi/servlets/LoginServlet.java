/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package mrysi.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("user");
        String password = request.getParameter("password");

        System.out.println("Usuario: " + user);
        System.out.println("Contraseña: " + password);

        // Conectar a la base de datos
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mrysiUsuarios", "admin", "Cristian201101.");
            String sql = "SELECT nombre FROM Datos WHERE users = ? AND passwords = ?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, user);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                // Usuario y contraseña correctos
                String nombre = rs.getString("nombre");
                Cookie userCookie = new Cookie("user", nombre);
                response.addCookie(userCookie);
                System.out.println("Inicio de sesión exitoso para el usuario: " + nombre);
                response.sendRedirect("index.jsp");
            } else {
                // Usuario o contraseña incorrectos
                System.out.println("Inicio de sesión fallido: usuario o contraseña incorrectos");
                response.sendRedirect("login.jsp?error=true");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error en la conexión a la base de datos: " + e.getMessage());
        }
    }
}
