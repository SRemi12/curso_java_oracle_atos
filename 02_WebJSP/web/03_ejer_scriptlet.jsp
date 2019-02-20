<%-- 
    Document   : 03_ejer_scriptlet
    Created on : 19-feb-2019, 17:13:47
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tabla de multiplicar de 7</h1>
        <%-- muestra una tabla con sus TRs, TDs, de la tabla 
        de mutiplicar del 0 al 10 con JSP --%>
        <table>
        <%
        for (int j = 0; j < 11; j++){
        for(int i = 0; i < 11; i++) {
        out.println("<tr><td>" + i + " x " + j + "</td><td> = </td><td>" + i * j + "</td></tr>"); 
        }
        }
        %>
        
        <%-- muestra una tabla con sus TRs, TDs, de la tabla 
        de mutiplicar del 7 con JSP --%>
        <% for(int i = 0; i < 11; i++) { %>
        <tr>
            <td>7 x</td>
            <td><%= i %> = </td>
            <td><%= i * 7 %></td>
        </tr>
        <% } %>
        
        
        
      </table>
    </body>
</html>
