<%-- 
    Document   : 02_scriptles
    Created on : 19-feb-2019, 16:59:54
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Scriptlet de JSP</title>
    </head>
    <body>
        <h1>Scriptlet de JSP</h1>
        <%
          int numero = 7, factorial = 1;
          for (int i = numero; i > 1; i--){
              factorial *= i;
          }
        %>
        <%-- Mosttrar en negrita el numero y el resultado --%>
        <p style="font-size: 20px; color: blueviolet;">
            El factorial de <span style="font-weight: bold;">
                <%= numero %>
            </span>
                <%= "es <span style=\"font-weight: bold;\">" + factorial +
                        "</span>" %>
        </p>
    </body>
</html>
