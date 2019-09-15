<%-- 
    Document   : index
    Created on : 15/09/2019, 11:16:02
    Author     : Estudos
--%>

<%@page import="br.com.fatecpg.musicas.DbMusicas"%>
<%@page import="br.com.fatecpg.musicas.Musicas"%>
<%@page import="br.com.fatecpg.musicas.DbBanda"%>
<%@page import="br.com.fatecpg.musicas.Banda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD MUSICAL</title>
    </head>
    <body>
        <h1>Cadastro de Música, Bandas e discos</h1>
        
        <h2> Nossas Bandas </h2>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Gênero</th>
                <th>Quantidade de Membros</th>
                <th>Opções</th>
            </tr>  
            <% for(Banda banda: DbBanda.getBandas()){ %>
            <tr>
                <td><%= DbBanda.getBandas().indexOf(banda) %></td>
                <td><%= banda.getNome() %></td>
                <td><%= banda.getEstilo() %></td>
                <td><%= banda.getMembro() %></td>
                <td>
                    <a href="./bandas/alterar.jsp?id=<%=DbBanda.getBandas().indexOf(banda)%>">Alterar</a>
                    <a href="./bandas/excluir.jsp?id=<%=DbBanda.getBandas().indexOf(banda)%>">Excluir</a>
                </td>
            </tr>
            
            <%}%>
        </table>    
        <a href="./bandas/incluir.jsp"><h3> Nova Banda </h3> </a>
        <h2> Nossas Músicas </h2>    
        <table border="1">    
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Banda</th>
                <th>Disco</th>
                <th>Opções</th>
            </tr>  
            <% for(Musicas musicas: DbMusicas.getMusicas()){ %>
            <tr>
                <td><%= DbMusicas.getMusicas().indexOf(musicas) %></td>
                <td><%= musicas.getMusica() %></td>
                <td><%= musicas.getBanda() %></td>
                <td><%= musicas.getDisco() %></td>
                <td>
                    <a href="./musicas/alterarm.jsp?id=<%=DbMusicas.getMusicas().indexOf(musicas)%>">Alterar</a>
                    <a href="./musicas/excluirm.jsp?id=<%=DbMusicas.getMusicas().indexOf(musicas)%>">Excluir</a>
                </td>
            </tr>
            <%}%>
        </table>
        <a href="./musicas/incluirm.jsp"><h3> Nova Música </h3> </a>
    </body>
</html>
