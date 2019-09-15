<%-- 
    Document   : alterar
    Created on : 15/09/2019, 15:39:58
    Author     : Usuário
--%>
<%@page import="br.com.fatecpg.musicas.Musicas"%>
<%@page import="br.com.fatecpg.musicas.DbMusicas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if(request.getParameter("cancelar") != null){
        response.sendRedirect("../index.jsp");
    }
    try{
        if (request.getParameter("alterar") != null){
            int indice = Integer.parseInt(request.getParameter("indice"));
            String musica = request.getParameter("musica");
            String banda = request.getParameter("banda");
            String disco = request.getParameter("disco");
            DbMusicas.getMusicas().set(indice, new Musicas (musica, banda, disco));
            response.sendRedirect("../index.jsp");
        }
    } catch (Exception e){%>
           <h1 style="color:red;"> A Error ocurred:<%= e.getMessage() %></h1>
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Deseja alterar esta Música?</h1>
            <% int indice = Integer.parseInt(request.getParameter("indice"));%>
            <%Musicas musicas = DbMusicas.getMusicas().get(indice);%>
        
        <form>
            Indice:<br>
            <input type="text" name="indice" value="<%=indice%>">
            Nome: <br>
            <input type="text" name="musica" value="<%musicas.getMusica();%>"> <br>
            Banda: <br>
            <input type="text" name="banda" value="<%musicas.getBanda();%>"> <br>
            Disco: <br>
            <input type="text" name="disco" value="<%musicas.getDisco();%>"> <br><br>
            
            <input type="submit" name="cancelar" value="Cancelar">
            <input type="submit" name="alterar" value="Alterar">
              
        </form>
    </body>
</html>
