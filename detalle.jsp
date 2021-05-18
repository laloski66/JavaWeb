<script src="js/bootstrap.js" type="text/javascript"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <dl class="row">
  <dt class="col-sm-4 h1">TRANSACCION N° ${idTxSesion}</dt>
  <dT class="col-sm-5 h1">ESTADO: ${estadoSesion}</dT>
  <dT class="col-sm-3 h1">Fecha-Hora TX ${fechahorakSesion}</dT>
        </d1>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Producto</th>
                    <th scope="col">Valor del dia</th>
                    <th scope="col">Cantidad</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Gas 5 Kilos</td>
                    <td>${v_gas5kSesion}</td>
                    <td>${c_gas5kSesion}</td>
                </tr>
                <tr>
                    <td>Gas 11 Kilos</td>
                    <td>${v_gas11kSesion}</td>
                    <td>${c_gas11kSesion}</td>
                </tr><tr>
                    <td>Gas 15 Kilos</td>
                    <td>${v_gas15kSesion}</td>
                    <td>${c_gas15kSesion}</td>
                </tr><tr>
                    <td>Gas 45 Kilos</td>
                    <td>${v_gas45kSesion}</td>
                    <td>${c_gas45kSesion}</td>
                </tr>
            </tbody>
        </table>
                
                <div class="col-4">                       
                        <form action="/Javi_Gas_V2/estadoEntregado">  
                            <div class="d-grid gap-2 col-6 mx-auto">                    
                                <button type="submit" class="btn btn-outline-primary" name="entregado" value="${idTxSesion}">Entregado</button>
                            </div>
                        </form>  
                </div>
                <div class="col-4">                       
                        <form action="/Javi_Gas_V2/estadoCancelado">  
                            <div class="d-grid gap-2 col-6 mx-auto">                    
                                <button type="submit" class="btn btn-outline-primary" name="cancelado" value="${idTxSesion}">Cancelado</button>
                            </div>
                        </form>  
                </div>
                            <div class="col-4">                       
                        <form action="/Javi_Gas_V2/estadoPendiente">  
                            <div class="d-grid gap-2 col-6 mx-auto">                    
                                <button type="submit" class="btn btn-outline-primary" name="pendiente" value="${idTxSesion}">Pendiente</button>
                            </div>
                        </form>  
                </div>
    </body>
        <div class="col-4">                       
                        <form action="/Javi_Gas_V2/precioGas">  
                            <div class="d-grid gap-2 col-6 mx-auto">                    
                                <button type="submit" class="btn btn-outline-primary">Volver</button>
                            </div>
                        </form>  
                </div>
</html>
