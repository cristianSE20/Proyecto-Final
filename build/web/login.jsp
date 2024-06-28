<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
        <link href="login.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="login-container">
            <form class ="login-form" action="LoginServlet" method="POST">
                <h2>Iniciar Sesión</h2><br>
                <label for="user">Correo:</label><br>
                <input type="text" id="user" name="user" required><br>
                <label for="password">Contraseña:</label><br>
                <input type="password" id="password" name="password" required><br>
                <input type="submit" value="Iniciar Sesión">
                <p class="texto">No estás registrado? <a href="signup.jsp">Únete</a></p>
            </form>
        </div>
    </body>
</html>