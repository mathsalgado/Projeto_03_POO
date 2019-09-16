<%-- 
    Document   : index
    Created on : 15/09/2019, 11:16:02
    Author     : Estudos
--%>

<%@page import="br.com.fatecpg.musicas.DbMusicas"%>
<%@page import="br.com.fatecpg.musicas.Musicas"%>
<%@page import="br.com.fatecpg.musicas.DbBanda"%>
<%@page import="br.com.fatecpg.musicas.Banda"%>
<%@page import="br.com.fatecpg.musicas.DbDiscos"%>
<%@page import="br.com.fatecpg.musicas.Discos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <title>CRUD MUSICAL</title>
    </head>
    <body>
    <center><h1>Cadastro de Música, Bandas e Discos</h1></center>

    <h2> <center>Nossas Bandas</center> </h2>
    <table border="1" class="table">
        <tr>
            <th class="cabecalho">Índice</th>
            <th class="cabecalho">Nome</th>
            <th class="cabecalho">Gênero</th>
            <th class="cabecalho">Quantidade de Membros</th>
            <th class="cabecalho">Opções</th>
        </tr>  
        <% for (Banda banda : DbBanda.getBandas()) {%>
        <tr>
            <td><%= DbBanda.getBandas().indexOf(banda)%></td>
            <td><%= banda.getNome()%></td>
            <td><%= banda.getEstilo()%></td>
            <td><%= banda.getMembro()%></td>
            <td>
                <a href="./bandas/alterar.jsp?id=<%=DbBanda.getBandas().indexOf(banda)%>">Alterar</a>
                <a href="./bandas/excluir.jsp?id=<%=DbBanda.getBandas().indexOf(banda)%>">Excluir</a>
                
            </td>
        </tr>

        <%}%>
    </table>    

    <a href="./bandas/incluir.jsp"><button type="button" name="" value="" class="css3button">Nova Banda</button></a>

    <h2> <center>Nossas Músicas</center> </h2>    

    <table border="1" class="table">    
        <tr>
            <th class="cabecalho">Índice</th>
            <th class="cabecalho">Nome</th>
            <th class="cabecalho">Banda</th>
            <th class="cabecalho">Disco</th>
            <th class="cabecalho">Opções</th>
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

    <a href="./musicas/incluirm.jsp"><button type="button" name="" value="" class="css3button">Nova Música</button></a> 

    <h2> <center>Nossos Discos</center> </h2>    

    <table border="1" class="table">    
        <tr>
            <th class="cabecalho">Índice</th>
            <th class="cabecalho">Título</th>
            <th class="cabecalho">Banda</th>
            <th class="cabecalho">Gênero</th>
            <th class="cabecalho">Mais tocada</th>
            <th class="cabecalho">Opções</th>
        </tr>  
        <% for(Discos discos: DbDiscos.getDiscos()){ %>
        <tr>
            <td><%= DbDiscos.getDiscos().indexOf(discos) %></td>
            <td><%= discos.getNome() %></td>
            <td><%= discos.getBanda() %></td>
            <td><%= discos.getGenero() %></td>
            <td><%= discos.getMusic() %></td>
            <td>

                <a href="./discos/alterard.jsp?id=<%=DbDiscos.getDiscos().indexOf(discos)%>">Alterar</a>
                <a href="./discos/excluird.jsp?id=<%=DbDiscos.getDiscos().indexOf(discos)%>">Excluir</a>
            </td>
        </tr>
        <%}%>
    </table>

    <a href="./discos/incluird.jsp"><button type="button" name="" value="" class="css3button">Novo Disco</button></a> 


</body>
</html>
