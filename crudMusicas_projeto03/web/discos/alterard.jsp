<%-- 
    Document   : alterard
    Created on : 16/09/2019, 10:07:29
    Author     : THIAGOFELIPE
--%>

<%@page import="br.com.fatecpg.musicas.Discos"%>
<%@page import="br.com.fatecpg.musicas.DbDiscos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
if(request.getParameter("cancelar")!=null){
         response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/"));
    }
    try {
         if (request.getParameter("alterar") != null) {
            
            String nome = request.getParameter("musica");
            String banda = request.getParameter("banda");
            String genero = request.getParameter("disco");
            String music = request.getParameter("music");
            int indice = Integer.parseInt(request.getParameter("id"));
            DbDiscos.getDiscos().set(indice, new Discos(nome, banda, genero, music));
            response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/"));
           
        }
    } catch (Exception e) {%>
<h1 style="color:red;"> Errroouu!:<%= e.getMessage()%></h1>
<%} %>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Deseja alterar este Disco?</h1></center>
        <% int indice = Integer.parseInt(request.getParameter("id"));%>
        <%Discos discos = DbDiscos.getDiscos().get(indice);%>

      <center>  <form>
            Indice:<br>
            <input type="text" name="id" value="<%=indice%>"><br>
            Título: <br>
            <input type="text" name="musica" value="<%=discos.getNome()%>"> <br>
            Banda: <br>
            <input type="text" name="banda" value="<%=discos.getBanda()%>"> <br>
            Gênero: <br>
            <input type="text" name="genero" value="<%=discos.getGenero()%>"> <br>
            Mais Tocada: <br>
            <input type="text" name="music" value="<%=discos.getMusic()%>"> <br><br>

            <input type="submit" name="cancelar" value="Cancelar">
            <input type="submit" name="alterar" value="Alterar">

          </form></center>
    </body>
</html>
