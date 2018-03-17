/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.professordelphi.locadorajsp.dto;

import com.professordelphi.locadorajsp.utilitarios.Conexao;

/**
 *
 * @author notle
 */
public class DtoLocacao extends Conexao {

    private int Loc_cliente_id, Loc_id, Loc_carro_id;
    private String Loc_datareserva, Loc_dataentrega;

    /**
     * @return the Loc_cliente_id
     */
    public int getLoc_cliente_id() {
        return Loc_cliente_id;
    }

    /**
     * @param Loc_cliente_id the Loc_cliente_id to set
     */
    public void setLoc_cliente_id(int Loc_cliente_id) {
        this.Loc_cliente_id = Loc_cliente_id;
    }

    /**
     * @return the Loc_id
     */
    public int getLoc_id() {
        return Loc_id;
    }

    /**
     * @param Loc_id the Loc_id to set
     */
    public void setLoc_id(int Loc_id) {
        this.Loc_id = Loc_id;
    }

    /**
     * @return the Loc_carro_id
     */
    public int getLoc_carro_id() {
        return Loc_carro_id;
    }

    /**
     * @param Loc_carro_id the Loc_carro_id to set
     */
    public void setLoc_carro_id(int Loc_carro_id) {
        this.Loc_carro_id = Loc_carro_id;
    }

    /**
     * @return the Loc_datareserva
     */
    public String getLoc_datareserva() {
        return Loc_datareserva;
    }

    /**
     * @param Loc_datareserva the Loc_datareserva to set
     */
    public void setLoc_datareserva(String Loc_datareserva) {
        this.Loc_datareserva = Loc_datareserva;
    }

    /**
     * @return the Loc_dataentrega
     */
    public String getLoc_dataentrega() {
        return Loc_dataentrega;
    }

    /**
     * @param Loc_dataentrega the Loc_dataentrega to set
     */
    public void setLoc_dataentrega(String Loc_dataentrega) {
        this.Loc_dataentrega = Loc_dataentrega;
    }

}
