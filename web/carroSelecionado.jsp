<%-- 
    Document   : carroSelecionado
    Created on : 16/07/2016, 13:50:55
    Author     : notle
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<jsp:useBean id="carro" scope="page"
             class="com.professordelphi.locadorajsp.dao.DAOCarro" />
<jsp:setProperty name="carro" property="*"/>

<jsp:useBean id="locacao" scope="page"
             class="com.professordelphi.locadorajsp.dao.DAOLocacao" />
<jsp:setProperty name="locacao" property="*"/>

<jsp:useBean id="cliente" scope="page"
             class="com.professordelphi.locadorajsp.dao.DAOCliente" />
<jsp:setProperty name="cliente" property="*"/>

<%
    try {
        carro.carroSelecionado(request.getParameter("car_id"));
    } catch (NullPointerException erro) {
        carro.limpar();
    }
    try {
        locacao.locar(request.getParameter("clickbt"));
      //  locacao.setMensagem(locacao.getLoc_cliente_id() + "");
    } catch (NullPointerException erro) {
        locacao.limpar();
    }
    String s = (String) session.getAttribute("codcli");
    int i = Integer.parseInt(s);
    locacao.setLoc_cliente_id(i);

%>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Formulário de Locação </title>
    </head>
    <body>
        <div class="mae">
            <div class="topo"></div>
            <div class="corpo">
                <form name="form1" method="post" action="carroSelecionado.jsp">
                    <h1><%=locacao.getMensagem()%></h1><br>
                    <label>Código</label>
                    <input name="loc_carro_id" type="text" value="<jsp:getProperty name="carro" property="car_id" />"><br>
                    <label>Marca</label>
                    <input name="carro_marca" type="text" value="<jsp:getProperty name="carro" property="car_marca" />"><br>
                    <label>Modelo</label>
                    <input name="carro_modelo" type="text" value="<jsp:getProperty name="carro" property="car_modelo" />"><br>
                    <label>Ano</label>
                    <input name="carro_ano" type="text" value="<jsp:getProperty name="carro" property="car_ano" />"><br>
                    <label>Cor</label>
                    <input name="carro_cor" type="text" value="<jsp:getProperty name="carro" property="car_cor" />"><br>
                    <label>Placa</label>
                    <input name="carro_placa" type="text" value="<jsp:getProperty name="carro" property="car_placa" />"><br>
                    <label>Locado</label>
                    <input name="carro_locado" type="text" value="<jsp:getProperty name="carro" property="car_locado" />"><br>
                    <label>Data da Locação</label>
                    <input name="loc_datareserva" type="text" value="<jsp:getProperty name="locacao" property="loc_datareserva" />"><br>
                    <label>Data da Entrega</label>
                    <input name="loc_dataentrega" type="text" value="<jsp:getProperty name="locacao" property="loc_dataentrega" />"><br>
                    <label>Código do Cliente</label>
                    <input name="loc_cliente_id" type="text" value="<jsp:getProperty name="locacao" property="loc_cliente_id" />"><br>

                    <input type="submit" value="Locar" name="clickbt" />
                    <input type="submit" value="Atualizar" name="clickbt" />
                    <input type="submit" value="Limpar" name="clickbt" />

                </form>
            </div>
            <div class="rodape"></div>
        </div>
    </body>
</html>
