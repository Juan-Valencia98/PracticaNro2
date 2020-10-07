<%@page import="com.emergentes.modelo.InscripcionCurso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    InscripcionCurso item = (InscripcionCurso) request.getAttribute("miCurso");
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
        <h1>Inscripcion en curso</h1>
        <form action="ControladorInscurso" method="post">
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
                    <td>Curso</td>
                    <td>
                        <select type="text" name="curso">
                            <option>9no Semestre</option> 
                            <option>8vo Semestre</option> 
                            <option>7mo Semestre</option> 
                            <option>6to Semestre</option> 
                            <option>5to Semestre</option>
                            <option>4to Semestre</option>
                            <option>3er Semestre</option>
                            <option>2do Semestre</option> 
                            <option>1er Semestre</option> 
                        </select>
                    </td>
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
