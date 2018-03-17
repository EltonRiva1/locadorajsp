/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.professordelphi.locadorajsp.dao;

import java.sql.SQLException;
import com.professordelphi.locadorajsp.dto.DtoCarro;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author notle
 */
public class DAOCarro extends DtoCarro {

    public DAOCarro() {

    }

    public List<DtoCarro> listaCarroModelo(String modelo) {

        List<DtoCarro> lista = new ArrayList<DtoCarro>();

        try {

            rs = meustate.executeQuery("SELECT * FROM carro where car_modelo='"+modelo+"'");

            while (rs.next()) {

                DtoCarro dtocarro = new DtoCarro();
                dtocarro.setCar_id(rs.getInt("car_id"));
                dtocarro.setCar_modelo(rs.getString("car_modelo"));
                dtocarro.setCar_placa(rs.getString("car_placa"));
                dtocarro.setCar_ano(rs.getInt("car_ano"));
                dtocarro.setCar_cor(rs.getString("car_cor"));
                dtocarro.setCar_marca(rs.getString("car_marca"));
                dtocarro.setCar_locado(rs.getInt("car_locado"));
                lista.add(dtocarro);

            }

        } catch (SQLException ex) {

            setMensagem(ex.getMessage());

        }

        return lista;

    }

    public List<DtoCarro> listarCarro() {

        List<DtoCarro> lista = new ArrayList<DtoCarro>();

        try {

            rs = meustate.executeQuery("SELECT * FROM carro");

            while (rs.next()) {

                DtoCarro dtocarro = new DtoCarro();

                dtocarro.setCar_id(rs.getInt("car_id"));
                dtocarro.setCar_modelo(rs.getString("car_modelo"));
                dtocarro.setCar_placa(rs.getString("car_placa"));
                dtocarro.setCar_ano(rs.getInt("car_ano"));
                dtocarro.setCar_cor(rs.getString("car_cor"));
                dtocarro.setCar_marca(rs.getString("car_marca"));
                dtocarro.setCar_locado(rs.getInt("car_locado"));

                lista.add(dtocarro);

            }

        } catch (SQLException ex) {

            setMensagem(ex.getMessage());

        }

        return lista;

    }

    public String listarCarro2(String tabela) {

        String listagem = null;

        if (tabela.equalsIgnoreCase("Listar")) {

            setMensagem("Cadastro de Carro");
            listagem = "<h1>" + getMensagem() + "</h1><table border=2>"
                    + "<tr><td align='center'><h4>Código</h4>"
                    + "</td><td align='center'><h4>Modelo</h4>"
                    + "</td><td align='center'><h4>Placa</h4>"
                    + "</td><td align='center'><h4>Ano</h4>"
                    + "</td><td align='center'><h4>Cor</h4>"
                    + "</td><td align='center'><h4>Marca</h4>"
                    + "</td><td align='center'><h4>Locado</h4>"
                    + "</td></tr>";

            try {

                rs = meustate.executeQuery("SELECT * FROM carro where car_locado=0");

                while (rs.next()) {

                    setCar_id(rs.getInt("car_id"));
                    setCar_modelo(rs.getString("car_modelo"));
                    setCar_placa(rs.getString("car_placa"));
                    setCar_ano(rs.getInt("car_ano"));
                    setCar_cor(rs.getString("car_cor"));
                    setCar_marca(rs.getString("car_marca"));
                    setCar_locado(rs.getInt("car_locado"));
                    listagem = listagem + "<tr><td>" + getCar_id() + "</td><td><a href='carroSelecionado.jsp?car_id=" + getCar_id() + "'>" + getCar_modelo() + "</a>" + "</td><td>" + getCar_placa() + "</td><td>" + getCar_ano() + "</td><td>" + getCar_cor() + "</td><td>" + getCar_marca() + "</td><td>" + getCar_locado() + "</td><td>";

                }

            } catch (SQLException erro) {

                setMensagem("Operação cancelada! " + erro);

            }

        }

        return listagem;

    }

    public void limpar() {

        setCar_locado(0);
        setCar_id(0);
        setCar_marca("");
        setCar_modelo("");
        setCar_ano(0);
        setCar_cor("");
        setCar_placa("");

    }

    public void persistencia(String s) {

        if (s.equalsIgnoreCase("Limpar")) {

            limpar();

        }

        if (s.equalsIgnoreCase("Incluir")) {

            setSql("INSERT INTO carro(car_marca, car_modelo, car_ano, car_cor, car_locado, car_placa)"
                    + "VALUES('" + getCar_marca() + "','"
                    + getCar_modelo() + "','"
                    + getCar_ano() + "','"
                    + getCar_cor() + "','"
                    + getCar_locado() + "','"
                    + getCar_placa() + "')");

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

            setSql("DELETE from carro WHERE car_id=" + Integer.toString(getCar_id()));
            try {

                meustate.executeUpdate(getSql());
                setMensagem("Operação efetuada com sucesso!");

            } catch (SQLException ex) {

                setMensagem("Operação cancelada " + getSql() + ex);

            }

        }

        if (s.equalsIgnoreCase("Atualizar")) {

            setSql("UPDATE carro SET "
                    + "car_marca='" + getCar_marca()
                    + "',"
                    + "car_modelo='" + getCar_modelo()
                    + "',"
                    + "car_ano ='" + getCar_ano()
                    + "',"
                    + "car_cor='" + getCar_cor()
                    + "',"
                    + "car_locado='" + getCar_locado()
                    + "',"
                    + "car_placa='" + getCar_placa()
                    + "' WHERE car_id=" + Integer.toString(getCar_id()));

            try {

                meustate.executeUpdate(getSql());
                limpar();
                setMensagem("Operação efetuada com sucesso!");

            } catch (SQLException ex) {

                setMensagem("Operação cancelada " + getSql());

            }

        }

        if (s.equalsIgnoreCase("Localizar")) {

            setSql("SELECT*FROM carro WHERE car_placa='"
                    + getCar_placa() + "'");

            try {

                rs = meustate.executeQuery(getSql());
                rs.next();
                setCar_id(rs.getInt("car_id"));
                setCar_marca(rs.getString("car_marca"));
                setCar_modelo(rs.getString("car_modelo"));
                setCar_ano(rs.getInt("car_ano"));
                setCar_cor(rs.getString("car_cor"));
                setCar_locado(rs.getInt("car_locado"));
                setCar_placa(rs.getString("car_placa"));
                setMensagem("Operação efetuada com sucesso!");

            } catch (SQLException erro) {

                setMensagem("Operação cancelada " + erro);

            }

        }

    }

    public void carroSelecionado(String car_id) {

        setSql("select*from carro where car_id='" + car_id + "'");
        try {
            rs = meustate.executeQuery(getSql());
            rs.next();
            setCar_id(rs.getInt("car_id"));
            setCar_modelo(rs.getString("car_modelo"));
            setCar_marca(rs.getString("car_marca"));
            setCar_ano(rs.getInt("car_ano"));
            setCar_cor(rs.getString("car_cor"));
            setCar_placa(rs.getString("car_placa"));
            setMensagem("Sistema de Cadastro para Locadora");

        } catch (SQLException erro) {
            setMensagem("Operação cancelada! " + erro);
        }

    }

}
