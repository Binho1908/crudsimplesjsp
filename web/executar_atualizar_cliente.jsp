<%@page import="MODEL.Cliente"%>
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
            Cliente cl = new Cliente();
            cl.setId_cliente(Integer.parseInt(request.getParameter("id")));
            cl.setNome_cliente(request.getParameter("nome"));
            cl.setSenha_cliente(request.getParameter("senha"));
            dcl.alterar(cl);
            response.sendRedirect("consultar_cliente.jsp");
        }catch(Exception erro){
            throw new RuntimeException("Erro ao executar atualizar "+erro);
        }

        %>
    </body>
</html>
