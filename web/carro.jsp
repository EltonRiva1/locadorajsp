<%-- 
    Document   : carro
    Created on : 30/04/2016, 14:43:01
    Author     : notle
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="carro" scope="page" class="com.professordelphi.locadorajsp.dao.DAOCarro"/>
<jsp:setProperty name="carro" property="*"/>

<% try {
    
        carro.persistencia(request.getParameter("btmovimento"));
        
    } catch(NullPointerException erro) {
        
        carro.limpar();
        carro.setMensagem("");
        
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" 
              content="text/html;charset=ISO-8859-1">
        <title>JSP Cadastro de Carro</title>
        <link href ="estilo/estilo.css" rel ="Stylesheet" 
              type="text/css">
    </head>
    <body>
        <div class="mae">
            <div class="topo">
                <div class="corpo">
                    <form name="form1" action="carro.jsp"
                          method="POST">
                        <h1> Cadastro de Carro <%=carro.getMensagem()%>
                        </h1>
                        <br>
                        <label>Código</label>
                        <input type="text" name="car_id"
                               value="<jsp:getProperty name="carro"
                                                property="car_id"/>"/>
                        <br>
                        <label>Marca</label>
                        <input type="text" name="car_marca"
                               value="<jsp:getProperty name="carro"
                                                property="car_marca"/>"/>
                        <br>
                        <label>Modelo</label>
                        <input type="text"
                               name="car_modelo" value="<jsp:getProperty
                                   name="carro" property="car_modelo"/>"/>
                        <br>
                        <label>Ano</label>
                        <input type="text"
                               name="car_ano" value="<jsp:getProperty
                                   name="carro" property="car_ano"/>"/>
                        <br>
                        <label>Cor</label>
                        <input type="text"
                               name="car_cor" value="<jsp:getProperty
                                   name="carro" property="car_cor"/>"/>
                        <br>
                        <label>Placa</label>
                        <input type="text"
                               name="car_placa" value="<jsp:getProperty name="carro"
                                                property="car_placa"/>"/>
                        <br>
                        <label>Locado</label>
                        <input type="text"
                               name="car_locado" value="<jsp:getProperty name="carro"
                                                property="car_locado"/>"/>
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
