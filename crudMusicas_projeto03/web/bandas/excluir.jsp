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
        if(request.getParameter("excluir")!=null){
            
            DbBanda.getBandas().remove(Integer.parseInt( request.getParameter("id")));
            response.sendRedirect("../index.jsp");
            
        }
    } catch (Exception e) {%>
        <h1 style="color:red;"> A Error ocurred:<%= e.getMessage() %></h1>
    <%}%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Bandas - Excluir</title>
    </head>
    <body>
        <h1>Tem certeza que deseja excluir a banda?</h1>
            
            <% int valor = Integer.parseInt( request.getParameter("id") );%>
            <p><%= valor %></p>
            <%Banda banda = DbBanda.getBandas().get(valor);%> 
     
        <form>
            Indice <br>
            <input type="text" name="id" value="<%= valor%>" ><br>
            Nome: <br>
            <input type="text" name="nome" value="<%= banda.getNome()%>" ><br>
            Gênero: <br>
            <input type="text" name="genero" value="<%= banda.getEstilo()%>" ><br>
            Quantidade de Membros <br>
            <input type="text" name="membros" value="<%= banda.getMembro()%>" ><br><br>
            
            <input type="submit" name="cancelar" value="Não">
            <input type="submit" name="excluir" value="Sim">
        </form>
    </body>
</html>