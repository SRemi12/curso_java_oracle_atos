<%-- 
    Document   : 07_clases
    Created on : 20-feb-2019, 17:25:31
    Author     : USUARIO
--%>

<%@page import="com.webjsp.ModeloDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="cabecera.jsp" %>
         <%= dameTitulo("Scriplet de JSP") %><h1>Hello World!</h1>
         <h3> <%= new ModeloDatos().getDatos() %> </h3>
    </body>
</html>
