<%-- 
    Document   : incluir
    Created on : 15/09/2019, 13:39:31
    Author     : Usuário
--%>
<%@page import="br.com.fatecpg.musicas.Musicas"%>
<%@page import="br.com.fatecpg.musicas.DbMusicas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("cancelar") != null){
        response.sendRedirect("../index.jsp");
    } try{
        if (request.getParameter("add") != null){
            String nome = request.getParameter("nome");
            String banda = request.getParameter("banda");
            String disco = request.getParameter("disco");
            DbMusicas.getMusicas().add(new Musicas (nome, banda, disco));
            response.sendRedirect("../index.jsp");
        }
    } catch (Exception e){%>
        <h1 style="color:red;"> A Error ocurred:<%= e.getMessage() %></h1>
    } <%}%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Músicas - Adicionar</title>
    </head>
    <body>
        <h1>Cadastre uma nova Música</h1>
        <form>
            Nome:<br>
            <input type="text" name="nome"><br>
            Banda:<br>
            <input type="text" name="banda"><br>
            Disco:<br>
            <input type="text" name="disco"><br><br>  
            <input type="submit" name="cancelar" value="Cancelar">
            <input type="submit" name="add" value="Adicionar">
              
        </form>
    </body>
</html>
