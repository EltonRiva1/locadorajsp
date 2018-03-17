<%-- 
    Document   : relatoriofuncionario
    Created on : 11/06/2016, 19:24:35
    Author     : notle
--%>

<%@page import="java.util.List"%>
<%@page import="com.professordelphi.locadorajsp.dto.DtoFuncionario"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<jsp:useBean id="funcionario" scope="page" class="com.professordelphi.locadorajsp.dao.DAOFuncionario"/>
<jsp:setProperty name="funcionario" property="*"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Lista de Funcionários</title>
    </head>
    <body>
        <% List listando = funcionario.listarFuncionario();
            String listagem = null;
            funcionario.setMensagem("Lista de Funcionários");
            listagem = "<h1>"+ funcionario.getMensagem() + "</h1><table border=2>"
                    + "<tr><td align='center'><h4>Código</h4>"
                    + "</td><td align='center'<h4>Nome</h4>"
                    + "</td><td align='center'<h4>Endereço</h4>"
                    + "</td><td align='center'<h4>Telefone</h4>"
                    + "</td><td align='center'<h4>Celular</h4>"
                    + "</td><td align='center'<h4>E-mail</h4>"
                    + "</td><td align='center'<h4>CPF</h4>"
                    + "</td><td align='center'<h4>Usuário</h4>"
                    + "</td><td align='center'<h4>Senha</h4>"
                    + "</td></tr>";

            try {

                for (int i = 0; i < listando.size(); i++) {

                    DtoFuncionario dto = (DtoFuncionario) listando.get(i);
                    out.println(dto.toString());
                    //listando.get(i); //carrega a lista de carros
                    listagem = listagem + "<tr><td>" + dto.getFunc_id() + "</td><td><a href = 'funcionarioSelecionado.jsp?func_id=" + dto.getFunc_id()
                            + "'>" + dto.getFunc_nome() + "</a>"
                            + "</td><td>" + dto.getFunc_endereco()
                            + "</td><td>" + dto.getFunc_telefone()
                            + "</td><td>" + dto.getFunc_celular()
                            + "</td><td>" + dto.getFunc_email()
                            + "</td><td>" + dto.getFunc_cpf()
                            + "</td><td>" + dto.getFunc_usuario()
                            + "</td><td>" + dto.getFunc_senha()
                            + "</td></tr>";
                    
                }

                out.println(listagem);
                out.println("</table");

            } catch (NullPointerException erro) {

                funcionario.setMensagem("Operação cancelada! " + erro);

            }
        %>
    </body>
</html>
