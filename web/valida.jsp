<%-- 
    Document   : valida
    Created on : 27-04-2018, 15:32:03
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
        String user, pass;
        %>
        <%
        HttpSession ss = request.getSession();
        user = request.getParameter("txtUsuario");
        pass = request.getParameter("txtPass");
        ss.setAttribute("txtUsuario", user);
        ss.setAttribute("txtPass", pass);
        
        if(user.equals("admin")&&pass.equals("admin")){
            response.sendRedirect("form.jsp");
        }else{
            if((user!="admin"&&pass=="admin")||(user=="admin"&&pass!="admin")||(user!="admin"&&pass!="admin")){
                response.sendRedirect("errordex.jsp");
            }
        }
        
        %>
        
    </body>
</html>
