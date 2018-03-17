/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.professordelphi.locadorajsp.utilitarios;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author notle
 */
public class Conexao {

    private String caminho = "jdbc:mysql://localhost/locadorajsp", usuario = "root", senha = "", mensagem, sql;
    protected Connection con;
    protected Statement meustate;
    protected ResultSet rs;

    public Conexao() {

        super();

        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(caminho, usuario, senha);
            meustate = con.createStatement();

        } catch (SQLException ex) {

            //JOptionPane.showMessageDialog(null,"Banco de Dados não encontrado: " + ex);
        } catch (ClassNotFoundException ex) {

            //JOptionPane.showMessageDialog(null, "Classe JDBC não encontrada:" + ex);
        }

    }

    /**
     * @return the sql
     */
    public String getSql() {

        return sql;

    }

    /**
     * @param sql the sql to set
     */
    public void setSql(String sql) {

        this.sql = sql;

    }

    /**
     * @return the mensagem
     */
    public String getMensagem() {

        return mensagem;

    }

    /**
     * @param mensagem the mensagem to set
     */
    public void setMensagem(String mensagem) {

        this.mensagem = mensagem;

    }

}
