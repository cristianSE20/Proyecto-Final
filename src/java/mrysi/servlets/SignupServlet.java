package mrysi.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            // Conectar a la base de datos
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mrysiUsuarios", "admin", "Cristian201101.");

            // Verificar si el correo ya está registrado
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Datos WHERE users = ?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                out.println("El correo ya está registrado. Intenta con otro.");
            } else {
                // Insertar el nuevo usuario en la base de datos
                ps = con.prepareStatement("INSERT INTO Datos (nombre, users, passwords) VALUES (?, ?, ?)");
                ps.setString(1, nombre);
                ps.setString(2, email);
                ps.setString(3, password);
                ps.executeUpdate();
                response.sendRedirect("login.jsp");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        }
    }
}
