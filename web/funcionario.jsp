<%-- 
    Document   : funcionario
    Created on : 25/04/2016, 00:55:07
    Author     : notle
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="funcionario" scope="page" class="com.professordelphi.locadorajsp.dao.DAOFuncionario"/>
<jsp:setProperty name="funcionario" property="*"/>

<% try {
        funcionario.persistencia(request.getParameter("btmovimento"));
    } catch (NullPointerException erro) {
        funcionario.limpar();
        funcionario.setMensagem("");
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" 
              content="text/html;charset=ISO-8859-1">
        <title>JSP Cadastro de Funcionário</title>
        <link href ="estilo/estilo.css" rel ="Stylesheet" 
              type="text/css">
    </head>
    <body>
        <div class="mae">
            <div class="topo">
                <div class="corpo">
                    <form name="form1" action="funcionario.jsp"
                          method="POST">
                        <h1> Cadastro de Funcionário <%=funcionario.getMensagem()%>
                        </h1>
                        <br>
                        <label>Código</label>
                        <input type="text" name="func_id"
                               value="<jsp:getProperty name="funcionario"
                                                property="func_id"/>"/>
                        <br>
                        <label>Nome</label>
                        <input type="text" name="func_nome"
                               value="<jsp:getProperty name="funcionario"
                                                property="func_nome"/>"/>
                        <br>
                        <label>Endereço</label>
                        <input type="text"
                               name="func_endereco" value="<jsp:getProperty
                                   name="funcionario" property="func_endereco"/>"/>
                        <br>
                        <label>Telefone</label>
                        <input type="text"
                               name="func_telefone" value="<jsp:getProperty
                                   name="funcionario" property="func_telefone"/>"/>
                        <br>
                        <label>Celular</label>
                        <input type="text"
                               name="func_celular" value="<jsp:getProperty
                                   name="funcionario" property="func_celular"/>"/>
                        <br>
                        <label>E-mail</label>
                        <input type="text"
                               name="func_email" value="<jsp:getProperty name="funcionario"
                                                property="func_email"/>"/>
                        <br>
                        <label>CPF</label>
                        <input type="text" name="func_cpf"
                               value="<jsp:getProperty name="funcionario"
                                                property="func_cpf"/>"/>
                        <br>
                        <label>Usuário</label>
                        <input type="text"
                               name="func_usuario" value="<jsp:getProperty
                                   name="funcionario" property="func_usuario"/>"/>
                        <br>
                        <label>Senha</label>
                        <input type="password"
                               name="func_senha" value="<jsp:getProperty name="funcionario"
                                                property="func_senha"/>"/>
                        <br>
                        <input type="submit" value="Incluir" name="btmovimento"/>
                        <input type="submit" value="Excluir" name="btmovimento"/>
                        <input type="submit" value="Atualizar" name="btmovimento"/>
                        <input type="submit" value="Localizar" name="btmovimento"/>
                        <input type="submit" value="Limpar" name="btmovimento"/>
                        <a href="index.jsp">
                            <input type="button" value="Voltar">
                        </a>
                    </form>
                </div>
                <div class="rodape"></div>
            </div>
        </div>
    </body>
</html>