<%-- 
    Document   : index
    Created on : 07/05/2016, 14:10:53
    Author     : notle
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="login" scope="page" class="com.professordelphi.locadorajsp.dao.DAOLogin"/>
<jsp:setProperty name="login" property="*"/>

<jsp:useBean id="funcionario" scope="page" class="com.professordelphi.locadorajsp.dao.DAOFuncionario"/>
<jsp:setProperty name="funcionario" property="*"/>

<jsp:useBean id="cliente" scope="page" class="com.professordelphi.locadorajsp.dao.DAOCliente"/>
<jsp:setProperty name="cliente" property="*"/>

<%
    login.setMensagem("");

    try {

        if (request.getParameter("clickBt").equalsIgnoreCase("login")) {

            if (login.logar(request.getParameter("email"), request.getParameter("senha")) == 0) {

                response.sendRedirect("candidato.jsp");

            }

            if (login.logar(request.getParameter("email"), request.getParameter("senha")) == 1) {

                response.sendRedirect("sistemaAdmin.jsp");

            }

            if (login.logar(request.getParameter("email"), request.getParameter("senha")) == 2) {

                session.setAttribute("codcli", String.valueOf(login.getCli_id()));
                response.sendRedirect("listacarro2.jsp?Listar=listar");
                out.print(login.getCli_id() + "");

            }

        }

    } catch (NullPointerException erro) {

        login.setMensagem("Email ou senha incorreto: " + erro);

    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <link rel="stylesheet" type="text/css" href="estilo/estilo.css"/>

        <title>JSP Locadora</title>
    </head>
    <body>
        <div class="mae">
            <div class="topo">
            </div>
            <div class="corpo">
                <form name="form1" action="index.jsp">
                    <h1></h1>
                    <label>Email</label>
                    <input type="text" name="email" value=""/>
                    <br>
                    <label>Senha</label>
                    <input type="password" name="senha" value=""/><br>
                    <input type="submit" value="Login" name="clickBt"/>
                    <input type="submit" value="Limpar" name="clickBt"/><br>
                    <br>
                    <br>
                </form>
            </div>
            <div class="rodape"></div>
        </div>
    </body>
</html>
