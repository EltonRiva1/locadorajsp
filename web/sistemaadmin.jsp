<%-- 
    Document   : sistemaadmin
    Created on : 21/05/2016, 14:19:31
    Author     : notle
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Administração do Sistema</title>
    </head>
    <body>
        <a href="cliente.jsp">Cadastro de Cliente</a><br></br>
        <a href="funcionario.jsp">Cadastro de Funcionário</a><br></br>
        <a href="carro.jsp">Cadastro de Carro</a><br></br>
        <a href="relatoriocarro.jsp?Lista=lista">Lista de Carros=>Func.</a><br></br>
        <a href="listarCarro2.jsp?Listar=listar">Lista de Carros</a><br></br>
        <a href="listarCliente.jsp?Listar=listar">Lista de Clientes</a><br></br>
        <a href="listarFuncionario.jsp?Listar=listar">Lista de Funcionários</a><br></br>
        <a href="digitaModelo.jsp?Listar=listar">Localizador de Veículos</a><br></br>
    </body>
</html>
