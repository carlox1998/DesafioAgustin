<%-- 
    Document   : Controlador
    Created on : 03-nov-2019, 19:30:47
    Author     : carlox
--%>

<%@page import="Clases.Usuario"%>
<%@page import="Resultado.Resultado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Resultado r = new Resultado();
    if (session.getAttribute("usuario")==null) {
            Usuario u = new Usuario();
            session.setAttribute("usuario", u);
        } 
    
    Usuario u = (Usuario) session.getAttribute("usuario");
    int jugador = Integer.parseInt(request.getParameter("eleccion"));
    int maquina = (int)(Math.random()*5);
    session.setAttribute("jugador", jugador);
    session.setAttribute("maquina", maquina);
    int result=r.ganar(jugador, maquina);
    if(result==0){
        session.setAttribute("resultado", "pierde");
        u.setDerrotas();
    }
    if(result==1){
         session.setAttribute("resultado", "empata");
         u.setEmpates();
    }
    if(result==2){
         session.setAttribute("resultado", "gana");
         u.setVictorias();
    }
    response.sendRedirect("resultado.jsp");
%>
