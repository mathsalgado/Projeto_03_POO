<%-- 
    Document   : excluird
    Created on : 16/09/2019, 10:11:32
    Author     : THIAGOFELIPE
--%>

<%@page import="br.com.fatecpg.musicas.Discos"%>
<%@page import="br.com.fatecpg.musicas.DbDiscos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if(request.getParameter("cancelar") != null){
        response.sendRedirect("../index.jsp");
    }
    try{
        if (request.getParameter("excluir") != null){      
            
            DbDiscos.getDiscos().remove(Integer.parseInt(request.getParameter("indice")));
            response.sendRedirect("../index.jsp");
        }
      
    } catch (Exception e){%>
           <h1 style="color:red;"> Errroouu!:<%= e.getMessage() %></h1>
           
    }
%>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="css/style.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Deseja alterar este Disco?</h1>
            <% int indice = Integer.parseInt(request.getParameter("indice"));%>
            <% if(DbDiscos.getDiscos().get(indice) == null){
                response.sendRedirect("../index.jsp");
            }
            Discos discos = DbDiscos.getDiscos().get(indice);
            %>
        
        <form>
            Indice:<br>
            <input type="text" name="indice" value="<%=indice%>">
            Título: <br>
            <input type="text" name="musica" value="<%discos.getNome();%>"> <br>
            Banda: <br>
            <input type="text" name="banda" value="<%discos.getBanda();%>"> <br>
            Gênero: <br>
            <input type="text" name="genero" value="<%discos.getGenero();%>"> <br>
            Mais Tocada: <br>
            <input type="text" name="music" value="<%discos.getMusic();%>"> <br><br>
            
            <input type="submit" name="cancelar" value="Cancelar">
            <input type="submit" name="alterar" value="Alterar">
              
        </form>
    </body>
</html>
