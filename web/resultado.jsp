<%-- 
    Document   : Resultado
    Created on : 04-Nov-2019, 09:14:44
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel = "stylesheet" type = "text/css" href = "css/resultado.css" />
        <link rel = "stylesheet" type = "text/css" href = "css/css.css" />
    </head>
    <body>
        <div id="jugador">
            <h1>Jugador</h1>
            <%
                if (String.valueOf(session.getAttribute("jugador")).equals("0")) {
            %>
            <img src="img/piedra.png" alt="Piedra" >
            <%
                }
            %>
            <%
                if (String.valueOf(session.getAttribute("jugador")).equals("1")) {
            %>
            <img src="img/papel.png" alt="Papel" >
            <%
                }
            %>
            <%
                if (String.valueOf(session.getAttribute("jugador")).equals("2")) {
            %>
            <img src="img/tijera.png" alt="Tijera" >
            <%
                }
            %>
            <%
                if (String.valueOf(session.getAttribute("jugador")).equals("3")) {
            %>
            <img src="img/lagarto.png" alt="Lagarto" >
            <%
                }
            %>
            <%
                if (String.valueOf(session.getAttribute("jugador")).equals("4")) {
            %>
            <img src="img/spock.png" alt="Spock" >
            <%
                }
            %>
        </div>
        <div id="vs"><img id="vs" src="img/versus.jpg" alt="vs"></div>
        <div id="maquina">
            <h1>Maquina</h1>
            <%
                if (String.valueOf(session.getAttribute("maquina")).equals("0")) {
            %>
            <img src="img/piedra.png" alt="Piedra" >
            <%
                }

                if (String.valueOf(session.getAttribute("maquina")).equals("1")) {
            %>
            <img src="img/papel.png" alt="Papel" >
            <%
                }

                if (String.valueOf(session.getAttribute("maquina")).equals("2")) {
            %>
            <img src="img/tijera.png" alt="Tijera" >
            <%
                }

                if (String.valueOf(session.getAttribute("maquina")).equals("3")) {
            %>
            <img src="img/lagarto.png" alt="Lagarto" >
            <%
                }

                if (String.valueOf(session.getAttribute("maquina")).equals("4")) {
            %>
            <img src="img/spock.png" alt="Spock" >
            <%
                }
            %>
        </div>
        <div id="resultado">
            <%
                if (String.valueOf(session.getAttribute("resultado")).equals("gana")) {
            %>
            <h1>Enhorabuena has ganado! </h1>
            <%
                }
                if (String.valueOf(session.getAttribute("resultado")).equals("empata")) {
            %>
            <h1>Enhorabuena has empatado! </h1>
            <%
                }

                if (String.valueOf(session.getAttribute("resultado")).equals("pierde")) {
            %>
            <h1>Enhorabuena has perdido! </h1>
            <%
                }
            %>
        </div>
        <form action="index.html" method="post">
            <input type="submit" value="Volver a jugar?" name="Again"/>
        </form>
    </body>
</html>
