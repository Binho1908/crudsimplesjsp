<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Novo Cliente</h1>
        
        <form action="executar_novo_cliente.jsp" method="post">
            <label>Nome: </label>
            <input type="text" name="nome" />
            
            <label>Senha: </label>
            <input type="password" name="senha" />
            
            <button>Ok</button>
        </form>
    </body>
</html>
