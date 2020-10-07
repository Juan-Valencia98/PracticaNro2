<%@page import="com.emergentes.modelo.RegistroLibro"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("listalibro")==null){
        ArrayList<RegistroLibro> listaux=new ArrayList<RegistroLibro>();
        session.setAttribute("listalibro",listaux);
    }
    
    ArrayList<RegistroLibro> lista =(ArrayList<RegistroLibro>) session.getAttribute("listalibro");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Libros Registrados</h1>
        <a href="ControladorReglibro?op=1">Nuevo</a>
        <table border="1">
            <tr>
                <th>id</th>
                <th>Titulo</th>
                <th>Autor</th>
                <th>Resumen</th>
                <th>Medio</th>
                <th></th>
                <th></th>
            </tr>
            <%
            if(lista!=null){
                for(RegistroLibro item : lista){
                                   
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getTitulo()%></td>
                <td><%= item.getAutor()%></td>
                <td><%= item.getResumen()%></td>
                <td><%= item.getMedio()%></td>
                <td>
                    <a href="ControladorReglibro?op=2&id=<%= item.getId()%>">
                        Editar
                    </a>
                    
                </td>
                <td>
                    <a  href="ControladorReglibro?op=3&id=<%= item.getId()%>"
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
