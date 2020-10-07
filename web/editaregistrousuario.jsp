<%@page import="com.emergentes.modelo.RegistroUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    RegistroUsuario item = (RegistroUsuario) request.getAttribute("miRegistroUsuario");
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
        <h1>Registro de Usuario</h1>
        <form action="ControladorRegusuario" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="<%= item.getId() %>"></td>
                </tr>
                <tr>
                    <td>Nombres</td>
                    <td><input type="text" name="nombres" value="<%= item.getNombres() %>"></td>
                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos" value="<%= item.getApellidos() %>"></td>
                </tr>
                <tr>
                    <td>Correo</td>
                    <td><input type="text" name="correo" value="<%= item.getCorreo() %>"></td>
                </tr>
                <tr>
                    <td>Contrasena</td>
                    <td><input type="text" name="contrasena" value="<%= item.getContrasena() %>"></td>
                </tr>
                <tr>
                <input type="hidden" name="nuevo" value="<%= nuevo %>"
                    <td></td>
                    <td><input type="submit" value="Procesar"></td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
