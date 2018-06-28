<%-- 
    Document   : form
    Created on : 27-04-2018, 15:56:17
    Author     : Zaiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    response.setHeader( "Pragma", "no-cache" );
    response.addHeader( "Cache-Control", "must-revalidate" );
    response.addHeader( "Cache-Control", "no-cache" );
    response.addHeader( "Cache-Control", "no-store" );
    response.setDateHeader("Expires", 0);
    %>
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
            <br><br><a href="index.jsp">Iniciar sesion</a>
        <%
        }else{
            out.print("<p>Usuario: "+ss.getAttribute("txtUsuario")+"</p>");
            out.print("<p>Password: "+ss.getAttribute("txtPass")+"</p>");
        %>
        <form method="post" action="exito.jsp">
            <p>Nombre/s: <input type="text" name="txtNombre" required></p>
            <p>Apellido/s: <input type="text" name ="txtApellido" required></p>
            <p>Fecha nacimiento: <input type="date" name="txtFecha" required></p>
            <p>Direccion: <input type="text" name="txtDireccion" required ></p>
            <p>Correo: <input type="email" name="txtEmail" required></p>
            <p>
            Sexo:
            <p>Masculino<input type="radio" name="txtSexo" value="Masculino" required>
            Femenino<input type="radio" name="txtSexo" value="Femenino" required>
            Otro<input type="radio" name="txtSexo" value="Otro" required></p>
            <p><input type="submit" name="btnSend" value="Enviar"></p>
        </form>
        <a href="logged.jsp">Volver al inicio</a><br>
        <a href="datos.jsp">Mostrar datos</a><br>
        <a href="end.jsp">Cerrar sesión</a>
        <%}%>
    </body>
</html>
