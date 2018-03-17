/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.professordelphi.locadorajsp.dao;

import com.professordelphi.locadorajsp.dto.DtoLocacao;
import java.sql.SQLException;

/**
 *
 * @author notle
 */
public class DAOLocacao extends DtoLocacao {

    public DAOLocacao() {

    }

    public void locar(String s) {

        if (s.equalsIgnoreCase("Locar")) {
                                                                                                                                                   
            setSql("INSERT INTO locacao(loc_cliente_id, loc_carro_id, loc_datareserva, loc_dataentrega) values('" + getLoc_cliente_id() + "', '" + getLoc_carro_id() + "', '" + getLoc_datareserva() + "', '" + getLoc_dataentrega() + "')");

            try {

                meustate.executeUpdate(getSql());
                atualizar();
                setMensagem("Operação com sucesso! " + getSql());

            } catch (SQLException erro) {

                setMensagem("Operação cancelada! " + erro + getSql());

            }

        }

    }

    public void atualizar() {

        setSql("UPDATE carro SET car_locado = '1' where car_id = '" + getLoc_carro_id() + "'");

        try {

            meustate.executeUpdate(getSql());
        //    limpar();
            setMensagem("Operação com sucesso!" + getSql());

        } catch (SQLException erro) {

            setMensagem("Operação cancelada! " + erro);

        }

    }

    public void limpar() {

        setLoc_id(0);
        setLoc_cliente_id(0);
        setLoc_carro_id(0);
        setLoc_datareserva("");
        setLoc_dataentrega("");

    }

}
