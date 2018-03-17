<%-- 
    Document   : listacarro2
    Created on : 21/05/2016, 14:28:56
    Author     : notle
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="carro" scope="page" class="com.professordelphi.locadorajsp.dao.DAOCarro"/>
<jsp:setProperty name="carro" property="*"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                out.println(carro.listarCarro2(request.getParameter("Listar")));
            } catch(NullPointerException erro) {
                carro.setMensagem("Operação cancelada! " + erro);
            }
        %>
    </body>
</html>
