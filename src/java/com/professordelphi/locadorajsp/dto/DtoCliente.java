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
public class DtoCliente extends Conexao {
    
    private String cli_nome, cli_endereco, cli_telefone, cli_celular, cli_email, cli_cpf, cli_usuario, cli_senha;
    private int cli_id;

    /**
     * @return the cli_nome
     */
    public String getCli_nome() {
        return cli_nome;
    }

    /**
     * @param cli_nome the cli_nome to set
     */
    public void setCli_nome(String cli_nome) {
        this.cli_nome = cli_nome;
    }

    /**
     * @return the cli_endereco
     */
    public String getCli_endereco() {
        return cli_endereco;
    }

    /**
     * @param cli_endereco the cli_endereco to set
     */
    public void setCli_endereco(String cli_endereco) {
        this.cli_endereco = cli_endereco;
    }

    /**
     * @return the cli_telefone
     */
    public String getCli_telefone() {
        return cli_telefone;
    }

    /**
     * @param cli_telefone the cli_telefone to set
     */
    public void setCli_telefone(String cli_telefone) {
        this.cli_telefone = cli_telefone;
    }

    /**
     * @return the cli_celular
     */
    public String getCli_celular() {
        return cli_celular;
    }

    /**
     * @param cli_celular the cli_celular to set
     */
    public void setCli_celular(String cli_celular) {
        this.cli_celular = cli_celular;
    }

    /**
     * @return the cli_email
     */
    public String getCli_email() {
        return cli_email;
    }

    /**
     * @param cli_email the cli_email to set
     */
    public void setCli_email(String cli_email) {
        this.cli_email = cli_email;
    }

    /**
     * @return the cli_cpf
     */
    public String getCli_cpf() {
        return cli_cpf;
    }

    /**
     * @param cli_cpf the cli_cpf to set
     */
    public void setCli_cpf(String cli_cpf) {
        this.cli_cpf = cli_cpf;
    }

    /**
     * @return the cli_usuario
     */
    public String getCli_usuario() {
        return cli_usuario;
    }

    /**
     * @param cli_usuario the cli_usuario to set
     */
    public void setCli_usuario(String cli_usuario) {
        this.cli_usuario = cli_usuario;
    }

    /**
     * @return the cli_senha
     */
    public String getCli_senha() {
        return cli_senha;
    }

    /**
     * @param cli_senha the cli_senha to set
     */
    public void setCli_senha(String cli_senha) {
        this.cli_senha = cli_senha;
    }

    /**
     * @return the cli_id
     */
    public int getCli_id() {
        return cli_id;
    }

    /**
     * @param cli_id the cli_id to set
     */
    public void setCli_id(int cli_id) {
        this.cli_id = cli_id;
    }
    
}