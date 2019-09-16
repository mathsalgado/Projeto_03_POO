<%-- 
    Document   : incluir
    Created on : 15/09/2019, 11:28:38
    Author     : Estudos
--%>

<%@page import="br.com.fatecpg.musicas.Banda"%>
<%@page import="br.com.fatecpg.musicas.DbBanda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("cancelar")!=null){
        response.sendRedirect("../index.jsp");
    }
    try {
        if(request.getParameter("add")!=null){
            DbBanda.getBandas().add(new Banda(request.getParameter("nome"),request.getParameter("genero"),Integer.parseInt(request.getParameter("membros"))));
            response.sendRedirect("../index.jsp");
        }
    } catch (Exception e) {%>
        <h1 style="color:red;"> A Error ocurred:<%= e.getMessage() %></h1>
    <%}%>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/style.css"/>
        <title>Cadastro de Bandas - Adicionar</title>
    </head>
    <body>
    <center> <h1>Cadastre uma nova Banda</h1> </center>
    <center>   <form>
            Nome: <br>
            <input type="text" name="nome" ><br>
            Gênero: <br>
            <input type="text" name="genero" ><br>
            Quantidade de Membros <br>
            <input type="text" name="membros" ><br><br>
            
            <input type="submit" name="cancelar" value="Cancelar">
            <input type="submit" name="add" value="Adicionar">
        </form></center>
    </body>
</html>
