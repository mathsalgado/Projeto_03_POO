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
        response.sendRedirect("index.jsp");
    }
    try {
        if(request.getParameter("add")!=null){
            DbBanda.getBandas().add(new Banda(request.getParameter("nome"),request.getParameter("genero"),Integer.parseInt(request.getParameter("membro"))));
        }
    } catch (Exception e) {%>
        <h1 style="color:red;"> A Error ocurred:<%= e.getMessage() %></h1>
    <%}
    

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Bandas - Adicionar</title>
    </head>
    <body>
        <h1>Cadastre uma nova Banda</h1>
        <form>
            Nome: <br>
            <input type="text" name="nome" ><br>
            Gênero: <br>
            <input type="text" name="genero" ><br>
            Quantidade de Membros <br>
            <input type="text" name="membros" ><br><br>
            
            <input type="submit" name="cancelar" value="Cancelar">
            <input type="submit" name="add" value="Adicionar">
        </form>
    </body>
</html>
