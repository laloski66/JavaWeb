<%-- 
    Document   : index
    Created on : 12-04-2021, 13:44:27
    Author     : Usuario
--%>
<link href="css/Estilos.css" rel="stylesheet" type="text/css"/>
<script src="js/bootstrap.js" type="text/javascript"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">        
        <title>Proyecto Final Modulo 4</title>
    </head>
    
    <body class="text-center">
        <div class="container bg-secondary">
            <div class="row  centradoForm ">
                <div class="col"></div>
                <div class="col bg-light">
                    <form action="/Javi_Gas_V2/ValidacionDatos" method="get">
                        </br>
                        </br>
                        <h3 class="text-primary">Plataforma Administración JAVI-GAS</h3>
                        </br>
                        <div class="form-floating">
                            <input type="text" class="form-control" id="floatingInput" placeholder="usuario" name="usuario" required>
                            <label for="floatingInput">Usuario</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control" id="floatingInput" placeholder="password" name="password" required>
                            <label for="floatingInput">Contraseña</label>
                        </div>
                        <button class="w-100 btn btn-lg btn-primary" type="submit">Ingresar</button>
                        <p class="mt-5 mb-3 text-muted">© Sustantiva 2021</p>
                    </form>
                    
                </div>
                <div class="col"></div>
            </div>
        </div>
    </body>
</html>
