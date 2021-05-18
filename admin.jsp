<%@page import="web.dataVentasEntregadas"%>
<%@page import="web.dataVentasPendiente"%>
<%@page import="web.dataVentasCanceladas"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<script src="js/bootstrap.js" type="text/javascript"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    dataVentasEntregadas objusu = new dataVentasEntregadas();
    dataVentasPendiente obj = new dataVentasPendiente();
    dataVentasCanceladas obje = new dataVentasCanceladas();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <div class="p-3 mb-2 bg-light text-dark">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="pendiente-tab" data-bs-toggle="tab" data-bs-target="#pendiente" type="button" role="tab" aria-controls="pendiente" aria-selected="true">Entregas Pendientes</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="entregada-tab" data-bs-toggle="tab" data-bs-target="#entregada" type="button" role="tab" aria-controls="entregada" aria-selected="false">Entregas Listas</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="cancelado-tab" data-bs-toggle="tab" data-bs-target="#cancelado" type="button" role="tab" aria-controls="cancelado" aria-selected="false">Entregas Canceladas</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="precio-tab" data-bs-toggle="tab" data-bs-target="#precio" type="button" role="tab" aria-controls="precio" aria-selected="false">Cambio de Precios</button>
                </li>
            </ul>
        </div>
        <div class="row">
            <div class="col-3"></div>
        <div class="col-7">
        <h1 class="text-primary">Plataforma Administración</h1>
        </div>
        <div class="col-2">
         <form action="/Javi_Gas_V2/loginAdmin.jsp">  
            <button class="btn btn-outline-danger " type="submit"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
  <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
</svg> Salir</button>
         </form>    
        </div>
        </div>
    </br>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="pendiente" role="tabpanel" aria-labelledby="pendiente-tab">
            <table class="table p-3 mb-2 bg-light text-dark">
                <thead>
                    <tr>
                        <th scope="col">TX</th>
                        <th scope="col">Estado</th>
                        <th scope="col">Fecha-Hora</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Direccion</th>
                        <th scope="col">Comuna</th>
                        <th scope="col">Telefono</th>
                        <th scope="col">Total</th>


                    </tr>
                </thead>
                <tbody>
                    <%
                        ResultSet pen = obj.Listar();
                        while (pen.next()) {
                    %>  

                    <tr>
                        <td> <%= pen.getString(1)%></td>
                        <td> <%= pen.getString(2)%></td>
                        <td> <%= pen.getString(16)%></td>
                        <td> <%= pen.getString(3)%></td>
                        <td> <%= pen.getString(4)%></td>
                        <td> <%= pen.getString(5)%></td>
                        <td> <%= pen.getString(6)%></td>
                        <td> <%= pen.getString(15)%></td>

                        <td>       
                            <form action="/Javi_Gas_V2/detalleServlet" method="get">
                                <button class="btn btn-outline-primary" type="submit" value="<%= pen.getString(1)%>" name="tx">Editar</button>
                            </form>

                        </td>    
                    </tr>
                    <%
                        }
                    %> 
                </tbody>
            </table>     

        </div>
        <div class="tab-pane fade" id="entregada" role="tabpanel" aria-labelledby="entregada-tab">
            <table class="table p-3 mb-2 bg-light text-dark">
                <thead>
                    <tr>
                        <th scope="col">TX</th>
                        <th scope="col">Estado</th>
                        <th scope="col">Fecha-Hora</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Direccion</th>
                        <th scope="col">Comuna</th>
                        <th scope="col">Telefono</th>
                        <th scope="col">Total</th>


                    </tr>
                </thead>
                <tbody>
                    <%
                        ResultSet rss = objusu.Listar();
                        while (rss.next()) {
                    %>  

                    <tr>
                        <td> <%= rss.getString(1)%></td>
                        <td> <%= rss.getString(2)%></td>
                        <td> <%= rss.getString(16)%></td>
                        <td> <%= rss.getString(3)%></td>
                        <td> <%= rss.getString(4)%></td>
                        <td> <%= rss.getString(5)%></td>
                        <td> <%= rss.getString(6)%></td>
                        <td> <%= rss.getString(15)%></td>
                        <td>       
                            <form action="/Javi_Gas_V2/detalleServlet" method="get">
                                <button class="btn btn-outline-primary" type="submit" value="<%= rss.getString(1)%>" name="tx">Editar</button>
                            </form>

                        </td>    
                    </tr>
                    <%
                        }
                    %> 
                </tbody>
            </table>     

        </div>
        <div class="tab-pane fade" id="cancelado" role="tabpanel" aria-labelledby="cancelado-tab">
            <table class="table p-3 mb-2 bg-light text-dark">
                <thead>
                    <tr>
                        <th scope="col">TX</th>
                        <th scope="col">Estado</th>
                        <th scope="col">Fecha-Hora</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Direccion</th>
                        <th scope="col">Comuna</th>
                        <th scope="col">Telefono</th>
                        <th scope="col">Total</th>


                    </tr>
                </thead>
                <tbody>
                    <%
                        ResultSet can = obje.Listar();
                        while (can.next()) {
                    %>  

                    <tr>
                        <td> <%= can.getString(1)%></td>
                        <td> <%= can.getString(2)%></td>
                        <td> <%= can.getString(16)%></td>
                        <td> <%= can.getString(3)%></td>
                        <td> <%= can.getString(4)%></td>
                        <td> <%= can.getString(5)%></td>
                        <td> <%= can.getString(6)%></td>
                        <td> <%= can.getString(15)%></td>
                        <td>       
                            <form action="/Javi_Gas_V2/detalleServlet" method="get">
                                <button class="btn btn-outline-primary" type="submit" value="<%= can.getString(1)%>" name="tx">Editar</button>
                            </form>

                        </td>    
                    </tr>
                    <%
                        }
                    %> 
                </tbody>
            </table>     

        </div>

        <div class="tab-pane fade" id="precio" role="tabpanel" aria-labelledby="precio-tab">

            <form action="/Javi_Gas_V2/actualizarPrecioGas" method="get">
                <div class="row p-3 mb-2 bg-light text-dark" >  

                    <div class="col-3 text-center">
                        <img src="img/Gas-5Kg-1-280x280.png" alt="" style="width:200px;height:200px;"/>
                        <h5 style="color:Tomato;">Valor actual $${cincoKilosSesion}</h5>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">$</span>
                            <input type="number" class="form-control" placeholder="0" aria-label="5k" aria-describedby="basic-addon1" name="5k" required>
                        </div>
                    </div>

                    <div class="col-3 text-center">
                        <img src="img/Gas-11Kg.png" alt="" style="width:200px;height:200px;"/>
                        <h5 style="color:Tomato;">Valor actual $${onceKilosSesion}</h5>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">$</span>
                            <input type="number" class="form-control" placeholder="0" aria-label="5k" aria-describedby="basic-addon1" name="11k" required>
                        </div>
                    </div>

                    <div class="col-3 text-center">
                        <img src="img/Gas-15Kg.png" alt="" style="width:200px;height:200px;"/>
                        <h5 style="color:Tomato;">Valor actual $${quinceKilosSesion}</h5>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">$</span>
                            <input type="number" class="form-control" placeholder="0" aria-label="5k" aria-describedby="basic-addon1" name="15k" required>
                        </div>
                    </div>

                    <div class="col-3 text-center">
                        <img src="img/Gas-45Kg-280x280.png" alt="" style="width:200px;height:200px;"/>
                        <h5 style="color:Tomato;">Valor actual $${cuarentaycincoKilosSesion}</h5>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">$</span>
                            <input type="number" class="form-control" placeholder="0" aria-label="5k" aria-describedby="basic-addon1"name="45k" required>
                        </div>
                    </div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <button class="btn btn-outline-primary" type="submit">Actualizar</button>
                    </div>
                    <p class="mt-5 mb-3 text-muted">*Debes ingresar todos los precios antes de actualizar</p>    
                </div>
            </form>    
        </div>

    </div>
</div>

</body>
</html>
