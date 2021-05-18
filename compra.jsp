<script src="js/bootstrap.js" type="text/javascript"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="css/Estilos.css" rel="stylesheet" type="text/css"/>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        body{
            background-image: url('img/fondo.jpg');
            background-size: contain;
        }
        .imgIngresos {

            background-image: url("img/ingresarDatos2.png");
            height: 550px;
            background-repeat:no-repeat;
            background-position:initial;
            background-size: contain;

        }
        header {

            background: #fe5000;

        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>


    <body>
        <header>
            <div class="container">
                <div class="row">
                    <div class="col-4">
                        <div class="d-grid gap-2 d-md-block">
                            <a href="precioGasIndex" class="btn bg-colorAbastible text-white" role="button">Inicio</a>
                            <a href="quienesSomos.jsp" class="btn bg-colorAbastible text-white" role="button">Quienes Somos</a>
                        </div>
                    </div>
                    <div class="col-4">
                        <a class="navbar-brand ">
                            <img src="img/logo.png" class="rounded mx-auto d-block" alt="Logo" style="width:200px;height:50px;"/>
                        </a>
                    </div>
                    <div class="col-4">
                        <a class="navbar-brand ">
                            <img src="img/contacto.png" class="rounded mx-auto d-block" alt="Contacto" style="width:200px;height:50px;"/>
                        </a>
                    </div>
                </div>
            </div>
        </header>
        </br></br></br></br>
        <div class="container">

            <div class="row p-3 mb-2 bg-light text-dark">

                <div class="col-1"></div>
                <div class="col-3">
                    <table class="table">

                        <tbody>
                            <tr>
                                <th scope="row">Nombre</th>
                                <td>${nombreSesion}</td>

                            </tr>
                            <tr>
                                <th scope="row">Direccion</th>
                                <td>${direccionSesion}</td>
                            </tr>
                            <tr>
                                <th scope="row">Comuna</th>
                                <td>${comunaSesion}</td>
                            </tr>
                            <tr>
                                <th scope="row">Telefono</th>
                                <td>${telefonoSesion}</td>
                            </tr>
                            <tr>
                                <th scope="row">Fecha-Hora</th>
                                <td>${fechaHoraSesion}</td>
                            </tr>

                        </tbody>
                    </table>

                    <div class="col-1">

                    </div>
                </div>
                <div class="col-4">
                    <table class="table">

                        <tbody>
                        <thead>
                            <tr>
                                <th scope="col">Producto</th>
                                <th scope="col">Valor</th>
                                <th scope="col">Cantidad</th>
                                <th scope="col">Total</th>
                            </tr>
                        </thead>


                        ${gas5KilosSesion}
                        ${gas11KilosSesion}
                        ${gas15KilosSesion}
                        ${gas45KilosSesion}


                        <tr>
                            <th></th>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <th scope="row">Total a Pagar</th> 
                            <td>${totalSesion}</td>
                        </tr>
                        </tbody>
                    </table>

                </div>  
                <div class="col-1"></div>
                <div class="col-2">
                    <img src="img/logo-webpay-plus-blanik-660x312-1.png" alt="" style="width:250px;height:150px;"/>
                </div>
            </div>

            <div class="row p-3 mb-2 bg-light text-dark">  
                    <div class="col-4">                       
                        <form action="/Javi_Gas_V2/index.jsp">  
                            <div class="d-grid gap-2 col-6 mx-auto">                    
                                <button type="submit" class="btn bg-colorAbastible text-white">Cancelar</button>
                            </div>
                        </form>  
                    </div>
                
                    <div class="col-4">
                        <form action="/Javi_Gas_V2/bdCompraServlet" method="get">  
                            <input type="hidden" name="nombre" value="${nombreSesion}">
                            <input type="hidden" name="direccion" value="${direccionSesion}">
                            <input type="hidden" name="comuna" value="${comunaSesion}">
                            <input type="hidden" name="telefono" value="${telefonoSesion}">
                            <input type="hidden" name="c5k" value="${c5kSesion}">
                            <input type="hidden" name="c11k" value="${c11kSesion}">
                            <input type="hidden" name="c15k" value="${c15kSesion}">
                            <input type="hidden" name="c45k" value="${c45kSesion}">
                            <input type="hidden" name="v5k" value="${v5kSesion}">
                            <input type="hidden" name="v11k" value="${v11kSesion}">
                            <input type="hidden" name="v15k" value="${v15kSesion}">
                            <input type="hidden" name="v45k" value="${v45kSesion}">
                            <input type="hidden" name="vtotal" value="${totalSesion}">
                            <input type="hidden" name="vfechahora" value="${fechaHoraSesion}">

                            <div class="d-grid gap-2 col-6 mx-auto">                    
                                <button type="submit" class="btn bg-colorAbastible text-white">Pagar</button>
                            </div>
                        </form>
                    </div>  
                            <div class="col-1"></div>
            </div>            
    </body>
</html>
