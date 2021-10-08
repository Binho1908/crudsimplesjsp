<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Atualizar clientes</h1>
        <form action="executar_atualizar_cliente.jsp">
            
            <label>ID: </label>
            <input type="number" name="id" value="<%=request.getParameter("id")%>" />
            
            <label>Nome: </label>
            <input type="nome" name="nome" value="<%=request.getParameter("nome")%>" />
            
            <label>Senha: </label>
            <input type="password" name="senha" value="<%=request.getParameter("senha")%>" />
            
            <button>Ok</button>
            
        </form>
    </body>
</html>
