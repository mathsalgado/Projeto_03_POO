<%-- 
    Document   : alterar
    Created on : 15/09/2019, 15:39:58
    Author     : Usuário
--%>
<%@page import="br.com.fatecpg.musicas.DbMusicas"%>
<%@page import="br.com.fatecpg.musicas.Musicas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    try {
        if (request.getParameter("cancelar") != null) {
            response.sendRedirect("../index.jsp");
        }
        else if (request.getParameter("excluir") != null) {

            DbMusicas.getMusicas().remove(Integer.parseInt(request.getParameter("indice")));
            response.sendRedirect("../index.jsp");
        }

    } catch (Exception e) {%>
<h1 style="color:red;"> A Error ocurred:<%= e.getMessage()%></h1>
<%}%>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Deseja alterar esta Música?</h1>
        <%
            try {
                int indice = Integer.parseInt(request.getParameter("id"));
                if (DbMusicas.getMusicas().get(indice) == null) {
                    response.sendRedirect("./Projeto_03_POO/index.jsp");
                }
                Musicas musicas = DbMusicas.getMusicas().get(indice);
        %>

        <form>
            Indice:<br>
            <input type="text" name="indice" value="<%=indice%>">
            Nome: <br>
            <input type="text" name="musica" value="<%=musicas.getMusica()%>"> <br>
            Banda: <br>
            <input type="text" name="banda" value="<%=musicas.getBanda()%>"> <br>
            Disco: <br>
            <input type="text" name="disco" value="<%=musicas.getDisco()%>"> <br><br>

            <input type="submit" name="cancelar" value="Cancelar">
            <input type="submit" name="excluir" value="Exlcuir">

        </form>

        <% } catch (Exception ex) { %>
        <h1 style="color:red;"> Erro ao obter o dado!></h1>
        <% }%>



    </body>
</html>
