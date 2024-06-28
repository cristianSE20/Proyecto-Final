<%-- 
    Document   : index
    Created on : 25 jun. 2024, 11:23:15
    Author     : crist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Pagina Web</title>
        <link href="styles.css" rel="stylesheet"/>
    </head>
    <body>
        <header>
            <div class="Presentation">
                <img src="./images/logo1.jpg"/>
                <span><a>Neon Sneakers</a></span>
            </div>
            <nav>
              <ul class="apartados">
                <li><a>Sobre nosotros</a></li>
                <li><a>Nuestros Sneakers</a></li>
                <li><a>Contacto</a></li>
                <li>
                    <%
                        Cookie[] cookies = request.getCookies();
                        String userName = null;
                        if (cookies != null) {
                            for (Cookie cookie : cookies) {
                                if (cookie.getName().equals("user")) {
                                    userName = cookie.getValue();
                                }
                            }
                        }
                        if (userName != null) {
                            out.print("Hola, " + userName);
                            out.print("<form action='LogoutServlet' method='post' style='display:inline;'>");
                            out.print("<button class='logout' type='submit'>Cerrar Sesión</button>");
                            out.print("</form>");
                        } else {
                            out.print("<a href='login.jsp'>Iniciar Sesion</a>");
                        }
                    %>
                </li>
              </ul>
            </nav>
        </header>
        <section>
            <div class="Introduction-container">
                <div class="Text-introduction">
                    <h3>HOLA, BIENVENIDO A NEON SNEAKERS</h3>
                    <h1>Tu lugar seguro y confiable para comprar sneakers.</h1>
                    <p>Aqui podras encontrar todos los sneakers que son tendencia, asi como muchos otros que son iconicos.</p>
                </div>
            </div>
        </section>
        <div class="Principal-container">
            <div class="Text-container">
                <h1>Sobre nosotros...</h1>
                <p>Somos NEON SNEAKERS, tu destino definitivo para las zapatillas más exclusivas y vibrantes del mercado! En Neon Sneakers, creemos que cada paso que das es una oportunidad para destacar. Por eso, nos especializamos en ofrecer una selección cuidadosamente curada de sneakers de las marcas más icónicas y emergentes del mundo. Nuestro compromiso es brindarte no solo las mejores zapatillas, sino también una experiencia de compra excepcional. Desde ediciones limitadas y colaboraciones únicas hasta los clásicos atemporales que nunca pasan de moda, en Neon Sneakers encontrarás el par perfecto para cada ocasión y estilo.</p>
            </div>
            <div class="Image-container">
                <img src = "./images/dior.jpg"/>
            </div>
        </div>
        <div class="Portafolio-container">
            <h1>Nuestros productos</h1>
            <div class= "Catalogue-container">
                <div class='Product-container'>
                    <img class='Photo-sneaker-container' src = "./images/jordan1.jpg"/>
                    <div class = "Info-container">
                        <h1>Tenis Air Jordan 1 Mid Black Toe White Gym Red</h1>
                        <p>"El Jordan 1 Mid en rojo con puntera en negro son una versión del modelo Air Jordan 1, que vienen en un diseño de corte medio."</p>
                        <a href='#'>Contactanos!</a>
                    </div>
                </div>
                <div class='Product-container'>
                    <img class='Photo-sneaker-container' src = "./images/jordan2.jpg"/>
                    <div class = "Info-container">
                        <h1>Tenis Air Jordan 1 Mid Black Royal Metallic</h1>
                        <p>"Domina un estilo fresco. La icónica y emblemática silueta Air Jordan 1 no quiere quedarse atrás, por eso, diseña nuevas e innovadoras variaciones para las nuevas generaciones, como estos tenis para baloncesto Air Jordan 1."</p>
                        <a href='#'>Contactanos!</a>
                    </div>
                </div>
                <div class='Product-container'>
                    <img class='Photo-sneaker-container' src = "./images/adidas1.jpg"/>
                    <div class = "Info-container">
                        <h1>Tenis Puma Suede Xl</h1>
                        <p>"Esta nueva versión de los clásicos Suede se inspira en la herencia de PUMA en el mundo del breakdance y su influencia en el streetwear."</p>
                        <a href='#'>Contactanos!</a>
                    </div>
                </div>
                <div class='Product-container'>
                    <img class='Photo-sneaker-container' src = "./images/NewBalance1.jpg"/>
                    <div class = "Info-container">
                        <h1>New Balance - Caballeros Balance 580</h1>
                        <p>"Los Tenis Casual New Balance 580 de Hombre son una opción ideal para quienes buscan combinar estilo, comodidad y rendimiento. Inspirados en el icónico diseño de los 90."</p>
                        <a href='#'>Contactanos!</a>
                    </div>
                </div>
            </div>
        </div>
        <footer class="Contact-container">
            <div class="Footer-container">
                <h1>Contactanos</h1>
                <p>Estaremos encantados de atenderte.</p>
            </div>
            <div class="Table-container">
                <div class="Info">
                    <h1>Direccion: Fernando Montes de Oca 29, Colonia Condesa.</h1>
                </div>
                <div class="Info">
                    <h1>Email: cris20@gmail.com</h1>
                </div>
                <div class="Info">
                    <h1>Telefono: 55 3243 6546</h1>
                </div>
            </div>
        </footer>
    </body>
</html>
