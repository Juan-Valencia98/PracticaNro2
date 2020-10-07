<%@page import="com.emergentes.modelo.RegistroUsuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("listausuario1")==null){
        ArrayList<RegistroUsuario> listaux=new ArrayList<RegistroUsuario>();
        session.setAttribute("listausuario1",listaux);
    }
    
    ArrayList<RegistroUsuario> lista =(ArrayList<RegistroUsuario>) session.getAttribute("listausuario1");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Usuarios Registrados</h1>
        <a href="ControladorRegusuario?op=1">Nuevo</a>
        <table border="1">
            <tr>
                <th>id</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Correo</th>
                <th>Contrasena</th>
                <th></th>
                <th></th>
            </tr>
            <%
            if(lista!=null){
                for(RegistroUsuario item : lista){
                                   
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getNombres()%></td>
                <td><%= item.getApellidos()%></td>
                <td><%= item.getCorreo()%></td>
                <td><%= item.getContrasena()%></td>
                <td>
                    <a href="ControladorRegusuario?op=2&id=<%= item.getId()%>">
                        Editar
                    </a>
                    
                </td>
                <td>
                    <a  href="ControladorRegusuario?op=3&id=<%= item.getId()%>"
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
