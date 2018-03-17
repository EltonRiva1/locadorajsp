<%-- 
    Document   : candidato
    Created on : 21/05/2016, 13:46:21
    Author     : notle
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="cliente" scope="page" class="com.professordelphi.locadorajsp.dao.DAOCliente"/>
<jsp:setProperty name="cliente" property="*"/>

<%
    try {

        cliente.persistencia(request.getParameter("btmovimento"));

    } catch (NullPointerException erro) {

        cliente.limpar();
        cliente.setMensagem("");

    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Cadastro de Cliente</title>
        <link href="estilo/estilo.css" rel="Stylesheet" type="text/css">
    </head>
    <body>
        <div class="mae">
            <div class="topo">
                <div class="corpo">
                    <form name="form1" action="cliente.jsp" method="POST">
                        <h1>Cadastro de Cliente - <%=cliente.getMensagem()%></h1>
                        <br>
                        <label>Código</label>
                        <input type="text" name="cli_id" value="<jsp:getProperty name="cliente" property="cli_id"/>"/>
                        <br>
                        <label>Nome</label>
                        <input type="text" name="cli_nome" value="<jsp:getProperty name="cliente" property="cli_nome"/>"/>
                        <br>
                        <label>Endereço</label>
                        <input type="text" name="cli_endereco" value="<jsp:getProperty name="cliente" property="cli_endereco"/>"/>
                        <br>
                        <label>Telefone</label>
                        <input type="text" name="cli_telefone" value="<jsp:getProperty name="cliente" property="cli_telefone"/>"/>
                        <br>
                        <label>Celular</label>
                        <input type="text" name="cli_celular" value="<jsp:getProperty name="cliente" property="cli_celular"/>"/>
                        <br>
                        <label>E-mail</label>
                        <input type="text" name="cli_email" value="<jsp:getProperty name="cliente" property="cli_email"/>"/>
                        <br>
                        <label>CPF</label>
                        <input type="text" name="cli_cpf" value="<jsp:getProperty name="cliente" property="cli_cpf"/>"/>
                        <br>
                        <label>Usuário</label>
                        <input type="text" name="cli_usuario" value="<jsp:getProperty name="cliente" property="cli_usuario"/>"/>
                        <br>
                        <label>Senha</label>
                        <input type="password" name="cli_senha" value="<jsp:getProperty name="cliente" property="cli_senha"/>"/>
                        <br>
                        <input type="submit" value="Incluir" name="btmovimento"/>
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
</body>
</html>
