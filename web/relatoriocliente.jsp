<%-- 
    Document   : relatoriocliente
    Created on : 11/06/2016, 14:54:46
    Author     : notle
--%>

<%@page import="java.util.List"%>
<%@page import="com.professordelphi.locadorajsp.dto.DtoCliente"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<jsp:useBean id="cliente" scope="page" class="com.professordelphi.locadorajsp.dao.DAOCliente"/>
<jsp:setProperty name="cliente" property="*"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Lista de Clientes</title>
    </head>
    <body>
        <% List listando = cliente.listarCliente();
            String listagem = null;
            cliente.setMensagem("Lista de Clientes");
            listagem = "<h1>"+ cliente.getMensagem() + "</h1><table border=2>"
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

                    DtoCliente dto = (DtoCliente) listando.get(i);
                    out.println(dto.toString());
                    //listando.get(i); //carrega a lista de carros
                    listagem = listagem + "<tr><td>" + dto.getCli_id() + "</td><td><a href = 'clienteSelecionado.jsp?cli_id=" + dto.getCli_id()
                            + "'>" + dto.getCli_nome() + "</a>"
                            + "</td><td>" + dto.getCli_endereco()
                            + "</td><td>" + dto.getCli_telefone()
                            + "</td><td>" + dto.getCli_celular()
                            + "</td><td>" + dto.getCli_email()
                            + "</td><td>" + dto.getCli_cpf()
                            + "</td><td>" + dto.getCli_usuario()
                            + "</td><td>" + dto.getCli_senha()
                            + "</td></tr>";
                    
                }

                out.println(listagem);
                out.println("</table");

            } catch (NullPointerException erro) {

                cliente.setMensagem("Operação cancelada! " + erro);

            }
        %>
    </body>
</html>
