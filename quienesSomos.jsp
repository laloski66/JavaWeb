<script src="js/bootstrap.js" type="text/javascript"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="css/Estilos.css" rel="stylesheet" type="text/css"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body{
            background-image: url('img/fondo.jpg');
            background-size: contain;
        }

        header {

            background: #fe5000;

        }
    </style>
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

        <div class="container">
            
            
            <div class="row">
                
                <div class="col-4">
                    <img src="img/quienesSomosTitulo.png" class="rounded float-start" alt="quienesSomosTitulo" style="width:500px;height:100px;"/>
                  
                    <img src="img/quienesSomos_Camion.png" alt="quienesSomos_Camion" style="width:400px;height:300px;"/>
                </div>
                <div class="col-8">
                    </br></br></br></br>
                    <img src="img/quienesSomo_Contenido.png" alt="Contenido_Quienes_Somos" />
                </div>
            </div>
        </div>

    </body>
</html>
