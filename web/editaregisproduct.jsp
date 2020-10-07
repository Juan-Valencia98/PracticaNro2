<%@page import="com.emergentes.modelo.RegistroProducto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    RegistroProducto item = (RegistroProducto) request.getAttribute("miRegistroproducto");
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
        <h1>Registro de Productos</h1>
        <form action="ControladorRegproducto" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="<%= item.getId() %>"></td>
                </tr>
                <tr>
                    <td>Producto</td>
                    <td><input type="text" name="producto" value="<%= item.getProducto() %>"></td>
                </tr>
                <tr>
                    <td>Categoria</td>
                    <td>
                        <select type="text" name="categoria" value="<%= item.getCategoria() %>">
                            <option>Comida</option> 
                            <option>Bebida</option> 
                            <option>Chatarra</option> 
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Existencia</td>
                    <td><input type="text" name="existencia" value="<%= item.getExistencia() %>"></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="text" name="precio" value="<%= item.getPrecio() %>"></td>
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
