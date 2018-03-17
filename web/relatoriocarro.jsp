<%-- 
    Document   : relatoriocarro
    Created on : 28/05/2016, 16:24:37
    Author     : notle
--%>

<%@page import="java.util.List"%>
<%@page import="com.professordelphi.locadorajsp.dto.DtoCarro"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<jsp:useBean id="carro" scope="page" class="com.professordelphi.locadorajsp.dao.DAOCarro"/>
<jsp:setProperty name="carro" property="*"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Lista de Veículos</title>
    </head>
    <body>
        <% List listando = carro.listarCarro();
            String listagem = null;
            carro.setMensagem("Lista de Carros");
            listagem = "<h1>"+ carro.getMensagem() + "</h1><table border=2>"
                    + "<tr><td align='center'><h4>Código</h4>"
                    + "</td><td align='center'<h4>Modelo</h4>"
                    + "</td><td align='center'<h4>Placa</h4>"
                    + "</td><td align='center'<h4>Ano</h4>"
                    + "</td><td align='center'<h4>Cor</h4>"
                    + "</td><td align='center'<h4>Marca</h4>"
                    + "</td><td align='center'<h4>Locado</h4>"
                    + "</td></tr>";

            try {

                for (int i = 0; i < listando.size(); i++) {

                    DtoCarro dto = (DtoCarro) listando.get(i);
                    out.println(dto.toString());
                    //listando.get(i); //carrega a lista de carros
                    listagem = listagem + "<tr><td>" + dto.getCar_id() + "</td><td><a href = 'carroSelecionado.jsp?car_id=" + dto.getCar_id()
                            + "'>" + dto.getCar_modelo() + "</a>"
                            + "</td><td>" + dto.getCar_placa()
                            + "</td><td>" + dto.getCar_ano()
                            + "</td><td>" + dto.getCar_cor()
                            + "</td><td>" + dto.getCar_marca()
                            + "</td><td>" + dto.getCar_locado()
                            + "</td></tr>";
                    
                }

                out.println(listagem);
                out.println("</table");

            } catch (NullPointerException erro) {

                carro.setMensagem("Operação cancelada! " + erro);

            }
        %>

    </body>
</html>
