<%-- 
    Document   : index
    Created on : 08-ago-2016, 1:45:33
    Author     : gersonfrancisco
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>GUIA 1 - POO2</title>
        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
        <link rel='stylesheet prefetch' href='http://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css'>
        <link rel='stylesheet prefetch' href='https://cdn.datatables.net/1.10.10/css/dataTables.bootstrap.min.css'>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <nav role="navigation" class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button role="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="#" class="navbar-brand">REPORTES</a>
                </div>

                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-lock"></span> GERSON MENDOZA</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <p class="pad-top-15 text-muted"><span class="glyphicon glyphicon-user"></span> Hola, <strong>Admin</strong>! </p>
                    <div class="panel-group">
                        <!---->
                        <div class="panel panel-default">
                            <div class="panel-heading">Contenido</div>
                            <div class="panel-body list-group">
                                <a href="#" class="list-group-item"><span class="glyphicon glyphicon-pencil"></span> Reportes</a>
                            </div>
                        </div>
                        <!---->

                        <div class="panel panel-default">
                            <div class="panel-heading">Configuracion  </div>
                            <div class="panel-body list-group">
                                <a href="#" class="list-group-item"><span class="glyphicon glyphicon-cog"></span> Configuraciones</a>
                            </div>
                        </div>
                        <!---->
                    </div>
                </div>
                <div class="col-md-9 pad-top-10">
                    <ul class="breadcrumb">
                        <li><a href="#"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                        <li>Administración</li>
                    </ul>
                    <!--Popular-->
                    <div class="panel panel-default">
                        <div class="panel-heading">Reportes</div>
                        <div class="panel-content">
                            <table id="dtable" class="table">
                                <tr>
                                    <td><span class="label label-info">1</span> <a href="#">Ver visitas:</a>
                                        <a>  -------------------  </a>
                                        <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample1" aria-controls="collapseExample">
                                            Ver
                                        </button>
                                        <div class="collapse" id="collapseExample1">
                                            <form class="" method="post" action="Scripts/report1.jsp" target="_blank">
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <select class="form-control" name="cmbUnidad" id="cmbUnidad">
                                                        <jsp:useBean id="beanUnidadCtrl" class="com.sv.udb.controlador.UnidadCtrl" scope="page"/>
                                        <c:forEach items="${beanUnidadCtrl.consTodo()}" var="fila">
                                            <c:choose>
                                                <c:when test="${fila.codiUnid eq cmbUnidad}">
                                                    <option name="codi_unid" value="${fila.codiUnid}" selected="">${fila.nombUnid}</option>
                                                </c:when>
                                                <c:otherwise>
                                            <option name="codi_unid" value="${fila.codiUnid}">${fila.nombUnid}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="col-md-4">
                                                    <button type="submit" class="btn btn-success">Generar reporte</button>
                                                </div>
                                            </div>
                                                </form>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="label label-info">2</span> <a href="#"> Seleccione una persona: </a>
                                        <a>  -------------------  </a>
                                        <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample2" aria-controls="collapseExample">
                                            Ver
                                        </button>
                                        <div class="collapse" id="collapseExample2">
                                            <form class="" method="post" action="Scripts/report2.jsp"target="_blank">
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <select class="form-control" name="cmbPersona" id="cmbPersona">
                                                        <jsp:useBean id="beanPersonaCtrl" class="com.sv.udb.controlador.PersonaCtrl" scope="page"/>
                                        <c:forEach items="${beanPersonaCtrl.consTodo()}" var="fila">
                                            <c:choose>
                                                <c:when test="${fila.codiPers eq cmbPersona}">
                                                    <option name="codi_pers" value="${fila.codiPers}" selected="">${fila.nombPers} ${fila.apelPers} - ${fila.duiPers}</option>
                                                </c:when>
                                                <c:otherwise>
                                            <option name="codi_pers" value="${fila.codiPers}">${fila.nombPers} ${fila.apelPers} - ${fila.duiPers}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                        </select>
                                                </div>
                                                <div class="col-md-4">
                                                    <button type="submit" class="btn btn-success">Generar reporte</button>
                                                </div>
                                            </div>
                                        </form>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="label label-info">3</span> <a href="#">Seleccione un rango de fechas: </a>
                                        <a>  -------------------  </a>
                                        <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample3" aria-controls="collapseExample">
                                            Ver
                                        </button>
                                        <div class="collapse" id="collapseExample3">
                                            <form class="" method="post" action="Scripts/report3.jsp"target="_blank">
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <label for="cmbFecha1">Fecha inicio:</label>
                                                    <input type="date" class="form-control" name="date1" id="date1" required/>
                                                </div>
                                                <div class="col-md-4">
                                                    <label for="cmbFecha2">Fecha fin:</label>
                                                    <input type="date" class="form-control" name="date2" id="date2" required/>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <button type="submit" class="btn btn-success">Generar reporte</button>
                                            </div>
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
        <script src='http://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js'></script>
        <script src='https://cdn.datatables.net/1.10.10/js/dataTables.bootstrap.min.js'></script>
        <script src="js/index.js"></script>
    </body>
</html>

