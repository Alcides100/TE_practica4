
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="cuadro">
            <form action="LoginControlador" method="post">
                <p id="titulo">INICIAR SESION</p>
                <hr>
                <br/><br/>
                <label id="subtitulo1">NOMBRE DE USUARIO</label>
                <br/><br/>
                <input type="text" class="entrada" name="usuario"/>
                <br/><br/>
                <label id="subtitulo2">CONTRASEÑA</label>
                <br/><br/>
                <input type="password" class="entrada" name="password"/>
                <br/><br/>
                <input type="submit" value="Ingresar" id="boton"/>
            </form>
            <br/>
            <p id="marca">ALCIDES/</p>
        </div>
    </body>
</html>
