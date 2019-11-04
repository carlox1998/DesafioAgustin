<%-- 
    Document   : Controlador
    Created on : 03-nov-2019, 19:30:47
    Author     : carlox
--%>

<%@page import="Resultado.Resultado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Resultado r = new Resultado();
    int jugador = Integer.parseInt(request.getParameter("eleccion"));
    int maquina = (int)(Math.random()*5);
    int result= r.ganar(jugador, maquina);
    if(result==0){
        response.sendRedirect("");
    }
    if(result==1){
        response.sendRedirect("");
    }
    if(result==2){
        response.sendRedirect("");
    }
%>
