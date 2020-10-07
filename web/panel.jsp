<%
    if (session.getAttribute("login")!="OK"){
        response.sendRedirect("login.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenido <%= session.getAttribute("usuario") %></h1>
        <ul>
            <li><a href="inscripcurso.jsp">Inscripciones en curso</a></li>
            <li><a href="registrousuario.jsp">Registro de usuarios</a></li>
            <li><a href="registroproducto.jsp">Inscripciones de productos</a></li>
            <li><a href="registrolibro.jsp">Registro de libros</a></li>
        </ul>
        <p></p>
        <a href="LoginSession">Salir</a>
    </body>
</html>
