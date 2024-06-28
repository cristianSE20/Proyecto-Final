<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro</title>
    <link href="signup.css" rel="stylesheet">
</head>
<body>
    <div class="signup-container">
        <form class= "signup-form" action="SignupServlet" method="post">
            <h2>Registro de Usuario</h2>
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>
            <br>
            <label for="email">Correo:</label>
            <input type="email" id="email" name="email" required>
            <br>
            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required>
            <br>
            <button type="submit">Registrar</button>
        </form>
    </div>
</body>
</html>
