/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.professordelphi.locadorajsp.dao;

import com.professordelphi.locadorajsp.dto.DtoFuncionario;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author notle
 */
public class DAOFuncionario extends DtoFuncionario {

    public DAOFuncionario() {

    }

    public List<DtoFuncionario> listarFuncionario() {

        List<DtoFuncionario> lista = new ArrayList<DtoFuncionario>();

        try {

            rs = meustate.executeQuery("SELECT * FROM funcionario");

            while (rs.next()) {
                
                DtoFuncionario dtofuncionario = new DtoFuncionario();

                dtofuncionario.setFunc_id(rs.getInt("func_id"));
                dtofuncionario.setFunc_nome(rs.getString("func_nome"));
                dtofuncionario.setFunc_endereco(rs.getString("func_endereco"));
                dtofuncionario.setFunc_telefone(rs.getString("func_telefone"));
                dtofuncionario.setFunc_celular(rs.getString("func_celular"));
                dtofuncionario.setFunc_email(rs.getString("func_email"));
                dtofuncionario.setFunc_cpf(rs.getString("func_cpf"));
                dtofuncionario.setFunc_usuario(rs.getString("func_usuario"));
                dtofuncionario.setFunc_senha(rs.getString("func_senha"));

                lista.add(dtofuncionario);

            }

        } catch (SQLException ex) {

            setMensagem(ex.getMessage());

        }

        return lista;

    }

    public void persistencia(String s) {

        if (s.equalsIgnoreCase("Limpar")) {

            limpar();

        }

        if (s.equalsIgnoreCase("Incluir")) {

            setSql("INSERT INTO funcionario (func_nome,func_cpf,func_telefone,func_celular,func_endereco,func_email,func_usuario,func_senha)"
                    + "VALUES('" + getFunc_nome() + "','"
                    + getFunc_cpf() + "','"
                    + getFunc_telefone() + "','"
                    + getFunc_celular() + "','"
                    + getFunc_endereco() + "','"
                    + getFunc_email() + "','"
                    + getFunc_usuario() + "','"
                    + getFunc_senha() + "')");

            System.out.println(getSql());

            try {
                meustate.executeUpdate(getSql());
                limpar();
                setMensagem("Operação efetuada com sucesso!");
            } catch (SQLException ex) {
                setMensagem("Operação cancelada!" + getSql() + ex);
            }
        }
        if (s.equalsIgnoreCase("Excluir")) {
            setSql("DELETE from funcionario WHERE func_id=" + Integer.toString(getFunc_id()));
            try {
                meustate.executeUpdate(getSql());
                setMensagem("Operação efetuada com sucesso!");
            } catch (SQLException ex) {
                setMensagem("Operação cancelada" + getSql() + ex);
            }
        }
        if (s.equalsIgnoreCase("Atualizar")) {
            setSql("UPDATE funcionario SET "
                    + "func_nome='" + getFunc_nome()
                    + "',"
                    + "func_cpf='" + getFunc_cpf()
                    + "',"
                    + "func_telefone ='" + getFunc_telefone()
                    + "',"
                    + "func_celular='" + getFunc_celular()
                    + "',"
                    + "func_endereco='" + getFunc_endereco()
                    + "',"
                    + "func_usuario='" + getFunc_usuario()
                    + "',"
                    + "func_senha='" + getFunc_senha()
                    + "',"
                    + "func_email='" + getFunc_email()
                    + "' WHERE func_id=" + Integer.toString(getFunc_id()));

            try {
                meustate.executeUpdate(getSql());
                limpar();
                setMensagem("Operação efetuada com sucesso!");
            } catch (SQLException ex) {
                setMensagem("Operação cancelada" + getSql());
            }
        }

        if (s.equalsIgnoreCase("Localizar")) {
            setSql("SELECT*FROM funcionario WHERE func_cpf='"
                    + getFunc_cpf() + "'");
            try {
                rs = meustate.executeQuery(getSql());
                rs.next();
                setFunc_id(rs.getInt("func_id"));
                setFunc_nome(rs.getString("func_nome"));
                setFunc_endereco(rs.getString("func_endereco"));
                setFunc_cpf(rs.getString("func_cpf"));
                setFunc_usuario(rs.getString("func_usuario"));
                setFunc_senha(rs.getString("func_senha"));
                setFunc_email(rs.getString("func_email"));
                setFunc_telefone(rs.getString("func_telefone"));
                setFunc_celular(rs.getString("func_celular"));
                setMensagem("Operação efetuada com sucesso!");

            } catch (SQLException erro) {
                setMensagem("Operação cancelada " + erro);
            }
        }
    }

    public void limpar() {
        setFunc_id(0);
        setFunc_nome("");
        setFunc_endereco("");
        setFunc_telefone("");
        setFunc_celular("");
        setFunc_email("");
        setFunc_cpf("");
        setFunc_usuario("");
        setFunc_senha("");
    }
}
