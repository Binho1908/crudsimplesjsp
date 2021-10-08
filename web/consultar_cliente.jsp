
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DAOCliente"%>
<%@page import="MODEL.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="consultar_cliente.jsp" method="post">
            
            <label>Nome: </label>
            <input name="nome" type="text" /> 
            
            <button>Ok</button>
        </form>
        
        
        <%
         try{
            out.print("<table border='1'>");
            out.print("<tr>");
            out.print("<td>ID</td><td>Nome</td><td>Senha</td><td>Atualizar</td><td>Excluir</td>");
            out.print("</tr>");
            DAOCliente dcl = new DAOCliente();
            if(request.getParameter("nome") == "" || request.getParameter("nome") == null ){
                ArrayList<Cliente> lista =  dcl.ListarTodos();
                for(int i = 0; i<lista.size(); i++){
                    out.print("<tr>");
                    out.print("<td>"+lista.get(i).getId_cliente()+"</td>");
                    out.print("<td>"+lista.get(i).getNome_cliente()+"</td>");
                    out.print("<td>"+lista.get(i).getSenha_cliente()+"</td>");
                    out.print("<td><a href='atualizar_clientes.jsp?id="+lista.get(i).getId_cliente()+"&nome="+lista.get(i).getNome_cliente()+"&senha="+lista.get(i).getSenha_cliente()+"'>Ataulizar</td>");
                    out.print("<td><a href='executar_excluir_clientes.jsp?id="+lista.get(i).getId_cliente()+ "'>Excluir</td>");
                    out.print("</tr>");
                }
            }else{
                ArrayList<Cliente> lista = dcl.ListarTodosNome(request.getParameter("nome"));
                for(int i = 0; i<lista.size(); i++){
                    out.print("<tr>");
                    out.print("<td>"+lista.get(i).getId_cliente()+"</td>");
                    out.print("<td>"+lista.get(i).getNome_cliente()+"</td>");
                    out.print("<td>"+lista.get(i).getSenha_cliente()+"</td>");
                    out.print("<td><a href='atualizar_clientes.jsp?id="+lista.get(i).getId_cliente()+"&nome="+lista.get(i).getNome_cliente()+"&senha="+lista.get(i).getSenha_cliente()+"'>Ataulizar</td>");
                    out.print("<td><a href='executar_excluir_clientes.jsp?id="+lista.get(i).getId_cliente()+ "'>Excluir</td>");
                    out.print("</tr>");
                }
            }
            out.print("</table>");
        }catch(Exception erro){
            throw new RuntimeException("Erro ao consultar" +erro);
        }
        %>
        
        <a href="novo_cliente.jsp">Novo cliente</a>
    </body>
</html>
