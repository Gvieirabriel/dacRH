<%-- 
<%-- 
    Document   : folhas
    Created on : May 22, 2017, 5:27:35 PM
    Author     : guilh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:if test="${sessionScope.funcionario.departamento.nomeDepartamento != 'RH' || sessionScope.funcionario.cargo.nomeCargo != 'Gerente'}"> <!--Trcar para RH e Gerente-->
    <c:redirect url="/erro.jsp">
        <c:param name="msg" value="Acesso negado!"/>
    </c:redirect>
</c:if>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <c:if test="${!empty requestScope.msg}">
            <script>
                alert("${requestScope.msg}");
            </script>
        </c:if>
        <title>Folha</title>
    </head>
    <body>
            <center>
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                      <div class="navbar-header">
                        <a class="navbar-brand" href="/RHACTS/manter_funcionarios.jsp"><img src="/RHACTS/css/logo0.png"style="width: 76%; margin: -1vh"></a>
                      </div>
                      <ul class="nav navbar-nav">
                        <li><a href="/RHACTS/manter_funcionarios.jsp">Funcionários</a></li>
                        <li><a href="/RHACTS/manter_departamentos.jsp">Departamentos</a></li>
                        <li><a href="/RHACTS/manter_cargos.jsp">Cargos</a></li>
                        <li><a href="/RHACTS/manter_folhas.jsp">Folhas</a></li>
                        <li><a href="/RHACTS/RelatoriosGerente">Relatórios</a></li>
                      </ul>
                      <ul class="nav navbar-nav navbar-right">
                        <li>
                            <div style="margin-top: 2vh; color: #ccc; ">
                                Bem vindo, <c:out value="${sessionScope.funcionario.nomeFuncionario}"/><span style="float:right;"></span>
                            </div>
                        </li>
                        <li><a href="/RHACTS/ProcessaLogout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                      </ul>
                    </div>
                  </nav>
                    <br/><br/><br/>
                    <h1>Folha</h1>
                    <br/>
                    <div class="container " style="width: 50%">
                        <form action="Folhas" class="form-group jumbotron" method="POST" role="form" style="text-align: left; display: flex; flex-flow: column;">
                            <div style="flex-flow: row wrap; display: flex;">
                                <label>Mês: </label>
                                <select class="form-control" name="mes" style="width: 15%; margin-right: 5vw;">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                                <label>Ano: </label>
                                <select class="form-control" name="ano" style="width: 15%">
                                    <option value="2006">2006</option>
                                    <option value="2007">2007</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                    <option value="2011">2011</option>
                                    <option value="2012">2012</option>
                                    <option value="2013">2013</option>
                                    <option value="2014">2014</option>
                                    <option value="2015">2015</option>
                                    <option value="2016">2016</option>
                                    <option value="2017">2017</option>
                                    <option value="2018" selected="true">2018</option>
                                </select>
                            </div>
                            <br></br>
                            <div>
                                </br>
                                <input class="btn btn-primary" type="submit" value="Fechar Folha"/>
                            </div>
                        </form>
                    </div>
    </center>
</body>
</html>
