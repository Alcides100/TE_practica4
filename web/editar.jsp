<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page import="com.emergentes.modelo.Lista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Lista lista = (Lista) request.getAttribute("lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estilo2.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="cuadro">
            <h1 id="titulo">
                <c:if test="${lista.id == 0}">Nuevo lista </c:if>
                <c:if test="${lista.id != 0}">Editar lista </c:if>
                </h1>
                <form action="MainController" method="post">

                    <hr>
                    <br/><br/>
                    <table>
                        <input type="hidden" name="id" value="${lista.id}">
                    <tr>
                        <td id="subtitulo1">fecha</td>
                        <td><input type="text" name="fecha" class="entrada" value="${lista.fecha}" ></td>
                    </tr>
                    <tr>
                        <td id="subtitulo1">Titulo</td>
                        <td><input type="text" name="titulo" class="entrada" value="${lista.titulo}" ></td>
                    </tr>
                    <tr>
                        <td id="subtitulo1">Contenido</td>
                        <td><input type="text"  name="contenido" class="entrada"  value="${lista.contenido}" ></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td ><input type="submit" value="Enviar" id="boton"></td>
                    </tr>
                </table>
            </form>  
        </div>
    </body>
</html>
