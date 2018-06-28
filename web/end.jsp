<%-- 
    Document   : end
    Created on : 03-05-2018, 17:30:30
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
        <%
            HttpSession ss = request.getSession();
            ss.invalidate();
            %>
            <p>Sesion finalizada!</p>
            <br>
            <a href="index.jsp">Volver al inicio</a>
    </body>
</html>
