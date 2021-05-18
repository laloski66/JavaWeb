
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
                            <a href="ventas.jsp" class="btn bg-colorAbastible text-white" role="button">Inicio</a>
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
        </br>
        <div class="container">
            
                    <form action="/Javi_Gas_V2/compraServlet" method="get">
                        <div class="row" >
                            <div class="col-4 imgIngresos">  

                                </br></br></br></br>
                                <div class="row ">
                                    <div class="col-1"></div>
                                    <div class="col-10">
                                        <div class="input-group mb-3">
                                            <input type="text" class="form-control" placeholder="Nombre" aria-label="nombre" aria-describedby="basic-addon1" name="nombre" required>
                                        </div>
                                        <div class="input-group mb-3">

                                            <input type="text" class="form-control" placeholder="Direccion" aria-label="direccion" aria-describedby="basic-addon1" name="direccion" required>
                                        </div>
                                        <div class="input-group mb-3">

                                            <input type="text" class="form-control" placeholder="Comuna" aria-label="comuna" aria-describedby="basic-addon1" name="comuna" required>
                                        </div>
                                        <div class="input-group mb-3">

                                            <input type="text" class="form-control" placeholder="Ingresa tu telefono" aria-label="telefono" aria-describedby="basic-addon1" name="telefono" required>
                                        </div>
                                    </div>
                                    <div class="col-1"></div>
                                </div>
                            </div>   
                            <div class="col-2 text-center">
                                </br></br></br></br>
                                <img src="img/Gas-5Kg-1-280x280.png" alt="" style="width:200px;height:200px;"/>
                                <h5 style="color:Tomato;">Valor $${cincoKilosSesion}</h5>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">Cantidad</span>
                                    <input type="number" class="form-control" placeholder="0" aria-label="5k" aria-describedby="basic-addon1" name="5k">
                                </div>
                                </br></br></br></br>
                                <div class="d-grid gap-2">
                                    <button class="btn bg-colorAbastible text-white" type="submit" name="pago" value="0">Comprar</button>
                                </div>
                            </div>
                            <div class="col-2 text-center">
                                </br></br></br></br>
                                <img src="img/Gas-11Kg.png" alt="" style="width:200px;height:200px;"/>
                                <h5 style="color:Tomato;">Valor $${onceKilosSesion}</h5>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">Cantidad</span>
                                    <input type="number" class="form-control" placeholder="0" aria-label="5k" aria-describedby="basic-addon1" name="11k">
                                </div>
                            </div>
                            <div class="col-2 text-center">
                                </br></br></br></br>
                                <img src="img/Gas-15Kg.png" alt="" style="width:200px;height:200px;"/>
                                <h5 style="color:Tomato;">Valor $${quinceKilosSesion}</h5>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">Cantidad</span>
                                    <input type="number" class="form-control" placeholder="0" aria-label="5k" aria-describedby="basic-addon1" name="15k">
                                </div>
                            </div>
                            <div class="col-2 text-center">
                                </br></br></br></br>
                                <img src="img/Gas-45Kg-280x280.png" alt="" style="width:200px;height:200px;"/>
                                <h5 style="color:Tomato;">Valor $${cuarentaycincoKilosSesion}</h5>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">Cantidad</span>
                                    <input type="number" class="form-control" placeholder="0" aria-label="5k" aria-describedby="basic-addon1"name="45k">
                                </div>
                                </br></br>
                            </div>    
                        </div>
                    </form>            
        </div>                        
    </body>
</html>
