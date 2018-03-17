/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.professordelphi.locadorajsp.dao;

import com.professordelphi.locadorajsp.dto.DtoFuncionario;
import java.sql.SQLException;

/**
 *
 * @author notle
 */
public class DAOLogin extends DtoFuncionario {

    public DAOLogin() {

        super();

    }

    public int logar(String email, String senha) {

        int i = 0;
        setSql("select * from funciionario where func_email = '" + email + "' and func_senha='" + senha + "'");

        try {

            rs = meustate.executeQuery(getSql());

            if (rs.next()) {

                i = 1;

            }

        } catch (SQLException erro) {

            setMensagem("Senha ou email incorreto! " + erro + " " + getSql());

        }

        setSql("select * from cliente where cli_email = '" + email + "' and cli_senha = '" + senha + "'");

        try {

            rs = meustate.executeQuery(getSql());

            if (rs.next()) {

                setCli_id(rs.getInt("cli_id"));
                i = 2;
                setMensagem(getCli_id() + "");

            }

        } catch (SQLException erro) {

            setMensagem("Senha ou email do cliente incorreto! " + erro + " " + getSql());

        }

        return i;

    }

}
