
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
    
    public Connection Conexao(){
        try{
            //crie seu banco de dados e o adicione aqui;
            Class.forName("");
            return DriverManager.getConnection("");
        }catch(Exception erro){
            throw new RuntimeException("Erro ao conectar o banco "+erro);
        }
    }
    
}
