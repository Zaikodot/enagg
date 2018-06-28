<%-- 
    Document   : index
    Created on : 27-04-2018, 15:28:47
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
        %>
        <form method="post" action="valida.jsp">
            <p>Usuario: <input type="text" name="txtUsuario" required></p>
            <p>Password: <input type="password" name ="txtPass" required></p>
            <p><input type="submit" name="btnSignup" value="Iniciar"></p>
        </form>
    </body>
</html>
