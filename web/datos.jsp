<%-- 
    Document   : datos
    Created on : 03-05-2018, 17:33:26
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
            String user, pass, name, last, fecha, direc, correo, sexo;
            %>
        <%
            HttpSession ss = request.getSession();
            if (ss.getAttribute("txtUsuario")==null && ss.getAttribute("txtPass")==null){
            out.print("ERROR: NO SE HA INICIADO SESION");%>
            <br><a href="index.jsp">Iniciar sesion</a>
        <%
        }else{
            user = request.getParameter("txtUsuario");
pass = request.getParameter("txtPass");
name = request.getParameter("txtNombre");
last = request.getParameter("txtApellido");
fecha = request.getParameter("txtFecha");
direc = request.getParameter("txtDireccion");
correo = request.getParameter("txtEmail");
sexo = request.getParameter("txtSexo");
ss.setAttribute("txtUsuario", user);
ss.setAttribute("txtPass", pass);
ss.setAttribute("txtNombre", name);
ss.setAttribute("txtApellido", last);
ss.setAttribute("txtFecha", fecha);
ss.setAttribute("txtDireccion", direc);
ss.setAttribute("txtCorreo", correo);
ss.setAttribute("txtSexo", sexo);
            out.print("<p>Usuario: "+ss.getAttribute("txtUsuario")+"</p>");
            out.print("<p>Password: "+ss.getAttribute("txtPass")+"</p>");
            out.print("<p>Nombre: "+ss.getAttribute("txtNombre")+"</p>");
            out.print("<p>Apellido: "+ss.getAttribute("txtApellido")+"</p>");
            out.print("<p>Fecha de Nacimiento: "+ss.getAttribute("txtFecha")+"</p>");
            out.print("<p>Direccion: "+ss.getAttribute("txtDireccion")+"</p>");
            out.print("<p>Correo: "+ss.getAttribute("txtEmail")+"</p>");
            out.print("<p>Sexo: "+ss.getAttribute("txtSexo")+"</p>");
            %>
            
        <a href="exito.jsp">Pagina de bienvenida</a><br>
        <a href="form.jsp">Formulario</a><br>
        <a href="end.jsp">Cerrar sesión</a>
        <%}%>
    </body>
</html>
