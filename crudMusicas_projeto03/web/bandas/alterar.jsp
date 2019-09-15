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
        if(request.getParameter("incluir")!=null){
            
            DbBanda.getBandas().set(Integer.parseInt( request.getParameter("id")),new Banda(request.getParameter("nome"),request.getParameter("genero"),Integer.parseInt(request.getParameter("membros"))));
            response.sendRedirect("../index.jsp");
        }
    } catch (Exception e) {%>
        <h1 style="color:red;"> A Error ocurred:<%= e.getMessage() %></h1>
    <%}%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Bandas - Alterar</title>
    </head>
    <body>
        <h1>Altere sua Banda</h1>
            
            <% //Dúvida try catch dando problemas (?)
                int id = Integer.parseInt( request.getParameter("id") );%>
            <%Banda banda = DbBanda.getBandas().get(id);%> 
     
        <form>
            Indice <br>
            <input type="text" name="id" value="<%= id%>" ><br>
            Nome: <br>
            <input type="text" name="nome" value="<%= banda.getNome()%>" ><br>
            Gênero: <br>
            <input type="text" name="genero" value="<%= banda.getEstilo()%>" ><br>
            Quantidade de Membros <br>
            <input type="text" name="membros" value="<%= banda.getMembro()%>" ><br><br>
            
            <input type="submit" name="cancelar" value="Cancelar">
            <input type="submit" name="incluir" value="Adicionar">
        </form>
    </body>
</html>
