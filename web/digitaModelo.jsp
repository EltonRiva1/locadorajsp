<%-- 
    Document   : digitaModelo
    Created on : 29/07/2016, 20:29:05
    Author     : notle
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="carro" scope="page" class="com.professordelphi.locadorajsp.dao.DAOCarro"/>
<jsp:setProperty name="carro" property="*"/>
<%
       try {
     if (request.getParameter("btmovimento").equalsIgnoreCase("Localizar")) {
           response.sendRedirect("relatoriomodelo.jsp?modelo="+request.getParameter("car_modelo"));
     }
       } catch (NullPointerException erro) {
           
       }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" 
              content="text/html;charset=ISO-8859-1">
        <title>JSP Modelos de Carros</title>
        <link href ="estilo/estilo.css" rel ="Stylesheet" 
              type="text/css">
    </head>
    <body>
        <div class="mae">
            <div class="topo">
                <div class="corpo">
                    <form name="form1" action="digitaModelo.jsp"
                          method="POST">
                        <h1> Modelos de carros
                        </h1>
                        <br>
                        <label>Modelo</label>
                        <input type="text"
                               name="car_modelo" value="<jsp:getProperty
                                   name="carro" property="car_modelo"/>"/>
                        <br>             
                        <input type="submit" value="Localizar" name="btmovimento"/>                   

                        <input type="button" value="Voltar">
                    </form>
                </div>
                <div class="rodape"></div>
            </div>
        </div>
    </body>
</html>
