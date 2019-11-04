<%-- 
    Document   : index
    Created on : 04-Nov-2019, 11:01:48
    Author     : victor
--%>

<%@page import="Clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel = "stylesheet" type = "text/css" href = "css/css.css" />
    </head>
    <body>
        <div id="marcador">
            <% if (session.getAttribute("usuario") != null) {
               Usuario u= (Usuario) session.getAttribute("usuario");
            %>
            <p>Victorias: <%= u.getVictorias()%></p>
             <p>Derrotas: <%= u.getDerrotas()%></p>
              <p>Empates:  <%= u.getEmpates()%></p>
            <%  
              }
            %>
        </div>
        <div>         
            <h1>Piedra, Papel, Tijera, Lagarto, Spock</h1>
            <h2>Elige lo que quieres escoger</h2>
        </div>
        <div>
            <form action="controlador.jsp" method="post">
                <input 
                    type="radio" name="eleccion" 
                    id="piedra" class="input-hidden" value="0" />
                <label for="piedra">
                    <img 
                        src="img/piedra.png" 
                        alt="Piedra" />
                </label>
                <input 
                    type="radio" name="eleccion" 
                    id="papel" class="input-hidden" value="1" />
                <label for="papel">
                    <img 
                        src="img/papel.png" 
                        alt="Papel" />
                </label> 
                <input 
                    type="radio" name="eleccion" 
                    id="tijera" class="input-hidden" value="2" />
                <label for="tijera">
                    <img 
                        src="img/tijera.png" 
                        alt="Tijera" />
                </label>
                <input 
                    type="radio" name="eleccion" 
                    id="lagarto" class="input-hidden" value="3" />
                <label for="lagarto">
                    <img 
                        src="img/lagarto.png" 
                        alt="Lagarto" />
                </label>
                <input 
                    type="radio" name="eleccion" 
                    id="spock" class="input-hidden"  value="4"/>
                <label for="spock">
                    <img 
                        src="img/spock.png" 
                        alt="Spock" />
                </label><br><br><br>
                <input type="submit" name="aceptar" value="Aceptar">
            </form>
        </div>
    </body>
</html>

