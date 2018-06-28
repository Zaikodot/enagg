<%-- 
    Document   : exito
    Created on : 03-05-2018, 17:56:15
    Author     : Zaiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
        String user,pass;
        %>
        <%
        HttpSession ss = request.getSession();
        if (ss.getAttribute("txtUsuario")==null && ss.getAttribute("txtPass")==null){
            out.print("ERROR: NO SE HA INICIADO SESION");%>
            <br><a href="index.jsp">Iniciar sesion</a>
        <%
        }else{
            out.print("<p>Usuario: "+ss.getAttribute("txtUsuario")+"</p>");
            out.print("<p>Nombre: "+ss.getAttribute("txtNombre")+""+ss.getAttribute("txtApellido")+"</p>");

        %>

        <p>¡Exito! todo esta de pelos.</p><br>
        <a href="form.jsp">Formulario</a><br>
        <a href="datos.jsp">Mostrar datos</a><br>
        <a href="end.jsp">Cerrar sesión</a>
        <%}%>
    </body>
</html>
