
package DAO;

import MODEL.Cliente;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAOCliente {
    
    private Connection conn;
    private Statement st;
    private PreparedStatement stmt;
    private ResultSet rs;
    private ArrayList<Cliente> lista = new ArrayList<>();
    
    public DAOCliente(){
        conn = new Conexao().Conexao();
    }
    
    
    public void inserir(Cliente cliente){
        
        try{
            String sql = "insert into clientes (nome_cliente, senha_cliente) VALUES (?,?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNome_cliente());
            stmt.setString(2, cliente.getSenha_cliente());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro na dao ao inserir "+erro );
        }
    }
    
    public void alterar(Cliente cliente){
        String sql = "UPDATE CLIENTES SET NOME_CLIENTE = ?, SENHA_CLIENTE = ? WHERE ID_CLIENTE = ?";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNome_cliente());
            stmt.setString(2, cliente.getSenha_cliente());
            stmt.setInt(3, cliente.getId_cliente());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro na dao ao alterar "+erro );
        }
    }
    
    public void excluir(int valor){
        String sql = "DELETE FROM CLIENTES WHERE ID_CLIENTE = "+valor;
        try{
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro na dao ao excluir "+erro );
        }
    }
    
    public ArrayList<Cliente> ListarTodos(){
        String sql = "SELECT * FROM CLIENTES";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setId_cliente(rs.getInt("id_cliente"));
                cliente.setNome_cliente(rs.getString("nome_cliente"));
                cliente.setSenha_cliente(rs.getString("senha_cliente"));
                lista.add(cliente);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro na dao ao listartodos "+erro);
        }
        return lista;
    }
    
    public ArrayList<Cliente> ListarTodosNome(String valor){
        String sql = "SELECT * FROM CLIENTES WHERE NOME_CLIENTE LIKE '%"+valor+"%' ";        
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setId_cliente(rs.getInt("id_cliente"));
                cliente.setNome_cliente(rs.getString("nome_cliente"));
                cliente.setSenha_cliente(rs.getString("senha_cliente"));
                lista.add(cliente);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro na dao ao listartodosNomes "+erro);
        }
        return lista;
    }
    
}
