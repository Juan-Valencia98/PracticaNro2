<%@page import="com.emergentes.modelo.RegistroLibro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    RegistroLibro item = (RegistroLibro) request.getAttribute("miRegistroLibro");
    boolean nuevo= true;
    if(item.getId()>0){
        nuevo=false;
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Libros</h1>
        <form action="ControladorReglibro" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="<%= item.getId() %>"></td>
                </tr>
                <tr>
                    <td>Titulo</td>
                    <td><input type="text" name="titulo" value="<%= item.getTitulo() %>"></td>
                </tr>
                <tr>
                    <td>Autor</td>
                    <td><input type="text" name="autor" value="<%= item.getAutor() %>"></td>
                </tr>
                <tr>
                    <td>Resumen</td>
                    <td><input type="text" name="resumen" value="<%= item.getResumen() %>"></td>
                </tr>
                <tr>
                    <td>Medio</td>
                    <td>
                        <input type="radio" name="medio" value="Fisico">Fisico
                        <input type="radio" name="medio" value="Magnetico">Magnetico
                    </td>
                </tr>
                <tr>
                <input type="hidden" name="nuevo" value="<%= nuevo %>">
                    <td></td>
                    <td><input type="submit" value="Procesar"></td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
