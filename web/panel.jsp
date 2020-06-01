<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Lista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Lista> lista = (List<Lista>) request.getAttribute("lista2");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estilo1.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="cuadro1">
            <p id="titulo">Blog Universidad</p>
            <hr>
            <br/>
            <p><a id="forma3" href="MainController?op=nuevo">Nuevo</a></p>

            <table border="0">

                <tr>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                </tr>

                <c:forEach var="item" items="${lista2}">

                    <tr>
                        <td id="forma0">${item.getFecha()}</td> 
                        <td></td>
                    </tr>
                    <tr>
                        <td id="forma"> <h3>${item.titulo}</h3></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td id="forma1">${item.contenido}</td> 
                        <td></td>
                    </tr>
                    <tr> 

                        <td id="forma2" colspan=""><a href="MainController?op=editar&id=${item.id}">Editar</a>  
                            <a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm
                                        ('Esta seguro de eliminar??'))">Eliminar</a>

                        </td>

                    </tr>
                    <tr>
                        <td> <br/></td>
                    </tr>

                    <tr>
                        <td> <hr width=1000></td>
                    </tr>
                    <tr>
                        <td> <br/></td>
                    </tr>



                </c:forEach>

            </table>
        </div>

    </body>
</html>
