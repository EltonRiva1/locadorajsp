/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.professordelphi.locadorajsp.dao;

import com.professordelphi.locadorajsp.dto.DtoCarro;
import java.sql.SQLException;
import com.professordelphi.locadorajsp.dto.DtoCliente;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author notle
 */
public class DAOCliente extends DtoCliente {

    public DAOCliente() {

    }

    public List<DtoCliente> listarCliente() {

        List<DtoCliente> lista = new ArrayList<DtoCliente>();

        try {

            rs = meustate.executeQuery("SELECT * FROM cliente");

            while (rs.next()) {
                
                DtoCliente dtocliente = new DtoCliente();

                dtocliente.setCli_id(rs.getInt("cli_id"));
                dtocliente.setCli_nome(rs.getString("cli_nome"));
                dtocliente.setCli_endereco(rs.getString("cli_endereco"));
                dtocliente.setCli_telefone(rs.getString("cli_telefone"));
                dtocliente.setCli_celular(rs.getString("cli_celular"));
                dtocliente.setCli_email(rs.getString("cli_email"));
                dtocliente.setCli_cpf(rs.getString("cli_cpf"));
                dtocliente.setCli_usuario(rs.getString("cli_usuario"));
                dtocliente.setCli_senha(rs.getString("cli_senha"));

                lista.add(dtocliente);

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

            setSql("INSERT INTO cliente(cli_nome, cli_cpf, cli_telefone, cli_celular, cli_endereco, cli_email, cli_usuario, cli_senha)"
                    + "VALUES('" + getCli_nome() + "','"
                    + getCli_cpf() + "','"
                    + getCli_telefone() + "','"
                    + getCli_celular() + "','"
                    + getCli_endereco() + "','"
                    + getCli_email() + "','"
                    + getCli_usuario() + "','"
                    + getCli_senha() + "')");

            System.out.println(getSql());

            try {

                meustate.executeUpdate(getSql());
                limpar();
                setMensagem("Operação efetuada com sucesso!");

            } catch (SQLException ex) {

                setMensagem("Operação cancelada! " + getSql() + ex);

            }

        }

        if (s.equalsIgnoreCase("Excluir")) {

            setSql("DELETE from cliente WHERE cli_id=" + Integer.toString(getCli_id()));

            try {

                meustate.executeUpdate(getSql());
                setMensagem("Operação efetuada com sucesso!");

            } catch (SQLException ex) {

                setMensagem("Operação cancelada " + getSql() + ex);

            }

        }

        if (s.equalsIgnoreCase("Atualizar")) {

            setSql("UPDATE cliente SET "
                    + "cli_nome='" + getCli_nome()
                    + "',"
                    + "cli_cpf='" + getCli_cpf()
                    + "',"
                    + "cli_telefone ='" + getCli_telefone()
                    + "',"
                    + "cli_celular='" + getCli_celular()
                    + "',"
                    + "cli_endereco='" + getCli_endereco()
                    + "',"
                    + "cli_usuario='" + getCli_usuario()
                    + "',"
                    + "cli_senha='" + getCli_senha()
                    + "',"
                    + "cli_email='" + getCli_email()
                    + "' WHERE cli_id=" + Integer.toString(getCli_id()));

            try {

                meustate.executeUpdate(getSql());
                limpar();
                setMensagem("Operação efetuada com sucesso!");

            } catch (SQLException ex) {

                setMensagem("Operação cancelada " + getSql());

            }

        }

        if (s.equalsIgnoreCase("Localizar")) {

            setSql("SELECT*FROM cliente WHERE cli_cpf='"
                    + getCli_cpf() + "'");

            try {

                rs = meustate.executeQuery(getSql());
                rs.next();
                setCli_id(rs.getInt("cli_id"));
                setCli_nome(rs.getString("cli_nome"));
                setCli_endereco(rs.getString("cli_endereco"));
                setCli_cpf(rs.getString("cli_cpf"));
                setCli_usuario(rs.getString("cli_usuario"));
                setCli_senha(rs.getString("cli_senha"));
                setCli_email(rs.getString("cli_email"));
                setCli_telefone(rs.getString("cli_telefone"));
                setCli_celular(rs.getString("cli_celular"));
                setMensagem("Operação efetuada com sucesso!");

            } catch (SQLException erro) {

                setMensagem("Operação cancelada " + erro);

            }

        }

    }

    public void limpar() {
        setCli_id(0);
        setCli_nome("");
        setCli_endereco("");
        setCli_telefone("");
        setCli_celular("");
        setCli_email("");
        setCli_cpf("");
        setCli_usuario("");
        setCli_senha("");
    }
}
