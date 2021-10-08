<%-- 
    Document   : executar_excluir_clientes
    Created on : 08/10/2021, 12:22:28
    Author     : Fabio
--%>

<%@page import="DAO.DAOCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try{
            DAOCliente dcl = new DAOCliente();
            dcl.excluir(Integer.parseInt(request.getParameter("id")));
            response.sendRedirect("consultar_cliente.jsp");
        }catch(Exception erro){
            throw new RuntimeException("Erro ao executar excluir "+erro);
        }
        %>
    </body>
</html>
