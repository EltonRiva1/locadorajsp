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
public class DtoCarro extends Conexao {

    private String car_marca, car_modelo, car_cor, car_placa;
    private int car_ano, car_id, car_locado;

    /**
     * @return the car_marca
     */
    public String getCar_marca() {
        return car_marca;
    }

    /**
     * @param car_marca the car_marca to set
     */
    public void setCar_marca(String car_marca) {
        this.car_marca = car_marca;
    }

    /**
     * @return the car_modelo
     */
    public String getCar_modelo() {
        return car_modelo;
    }

    /**
     * @param car_modelo the car_modelo to set
     */
    public void setCar_modelo(String car_modelo) {
        this.car_modelo = car_modelo;
    }

    /**
     * @return the car_cor
     */
    public String getCar_cor() {
        return car_cor;
    }

    /**
     * @param car_cor the car_cor to set
     */
    public void setCar_cor(String car_cor) {
        this.car_cor = car_cor;
    }

    /**
     * @return the car_placa
     */
    public String getCar_placa() {
        return car_placa;
    }

    /**
     * @param car_placa the car_placa to set
     */
    public void setCar_placa(String car_placa) {
        this.car_placa = car_placa;
    }

    /**
     * @return the car_ano
     */
    public int getCar_ano() {
        return car_ano;
    }

    /**
     * @param car_ano the car_ano to set
     */
    public void setCar_ano(int car_ano) {
        this.car_ano = car_ano;
    }

    /**
     * @return the car_id
     */
    public int getCar_id() {
        return car_id;
    }

    /**
     * @param car_id the car_id to set
     */
    public void setCar_id(int car_id) {
        this.car_id = car_id;
    }
    
    public int getCar_locado() {
        return car_locado;
    }
    
    public void setCar_locado(int car_locado) {
        this.car_locado = car_locado;
    }

}
