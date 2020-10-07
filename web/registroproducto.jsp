<%@page import="com.emergentes.modelo.RegistroProducto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("listaregistro")==null){
        ArrayList<RegistroProducto> listaux=new ArrayList<RegistroProducto>();
        session.setAttribute("listaregistro",listaux);
    }
    
    ArrayList<RegistroProducto> lista =(ArrayList<RegistroProducto>) session.getAttribute("listaregistro");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Producto Registrados</h1>
        <a href="ControladorRegproducto?op=1">Nuevo</a>
        <table border="1">
            <tr>
                <th>id</th>
                <th>Producto</th>
                <th>Categoria</th>
                <th>Existencia</th>
                <th>Precio</th>
                <th></th>
                <th></th>
            </tr>
            <%
            if(lista!=null){
                for(RegistroProducto item : lista){
                                   
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getProducto()%></td>
                <td><%= item.getCategoria()%></td>
                <td><%= item.getExistencia()%></td>
                <td><%= item.getPrecio()%></td>
                <td>
                    <a href="ControladorRegproducto?op=2&id=<%= item.getId()%>">
                        Editar
                    </a>
                    
                </td>
                <td>
                    <a  href="ControladorRegproducto?op=3&id=<%= item.getId()%>"
                        onclick="return confirm('Esta seguro?')">Eliminar</a>
                </td>
            </tr>
            <%
                }
            }    
            %>
        </table>
    </body>
</html>
