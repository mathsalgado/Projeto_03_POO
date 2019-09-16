<%-- 
    Document   : incluird
    Created on : 16/09/2019, 10:11:43
    Author     : THIAGOFELIPE
--%>

<%@page import="br.com.fatecpg.musicas.Discos"%>
<%@page import="br.com.fatecpg.musicas.DbDiscos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("cancelar") != null){
        response.sendRedirect("../index.jsp");
    } try{
        if (request.getParameter("add") != null){
            String nome = request.getParameter("nome");
            String banda = request.getParameter("banda");
            String genero = request.getParameter("genero");
            String music = request.getParameter ("music");
            DbDiscos.getDiscos().add(new Discos (nome, banda, genero, music));
            response.sendRedirect("../index.jsp");
        }
    } catch (Exception e){%>
        <h1 style="color:red;"> Errroouu!:<%= e.getMessage() %></h1>
    } <%}%>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="css/style.css"/>
        <title>Cadastro de Discos - Adicionar</title>
    </head>
    <body>
    <center><h1>Cadastre um novo Disco</h1></center>
    <center> <form>
            Título:<br>
            <input type="text" name="nome"><br>
            Banda:<br>
            <input type="text" name="banda"><br>
            Gênero:<br>
            <input type="text" name="genero"><br>
            Mais Tocada:<br>
            <input type="text" name="music"><br><br>  
            <input type="submit" name="cancelar" value="Cancelar">
            <input type="submit" name="add" value="Adicionar">
              
        </form></center>
    </body>
</html>
