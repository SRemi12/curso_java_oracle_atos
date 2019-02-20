<%-- 
    Document   : 04_req_ses
    Created on : 20-feb-2019, 9:27:13
    Author     : Sergio Remiro
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de peiciones y respuestas JSP</title>
    </head>
    <body class="container">
        <%@include file="cabecera.jsp" %>
        <h1>Gestión de peiciones y respuestas JSP</h1>
        <%
            String nomApell = request.getParameter("nombre_apell");
            String desc = request.getParameter("descripcion");
            String email = request.getParameter("email");
            if (nomApell == null || desc == null || email == null)
            { %>
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <script>
                    function preguntarSiEnviar() {
                        
                        if (document.getElementById("nombre_apell").value !==""
                                && document.getElementById("nombre_apell").value.length > 1) {
                            //cuando el nombre es correcto
                            let siQuiereEnviar = window.confirm("¿Seguro que quiere enviar?");
                        } else {
                            alert ("Nombre debe ser mayor de un caracter");
                            return false;
                        }
                    }
                </script>
                <form action="04_req_ses.jsp" method="get" class="form-inline" onsubmit="return preguntarSiEnviar()">
            <p>Nombre y apellidos:</p>
            <p><input type="text" name="nombre_apell" id="nombre_apell" autocomplete="true" size="100" maxlength="100" required="true" placeholder="Nombre y apellidos"/></p>
            <p>Descripción:</p>
            <p><textarea id="descripcion" name="descripcion" required="true" cols="100" rows="10" placeholder="Introduzca una descripción detallada"> </textarea></p>
            <p>Email:</p>
            <p> <input id="email" name="email" type="email" required="true" cols="100" rows="10" placeholder="Email" /></p>
            <br />
            <input type="submit" value="Enviar" clas="btn btn-default"/>
            </form>
        </div>
        <div class="col-lg-2">
        <%
            
          
             
           } //Fin if mostrar FORM
           if(nomApell != null || desc != null || email != null) {
            //Lógica de validación
            if (nomApell !=null && nomApell.length() > 1){
                if (desc !=null && desc.length() > 5){//Validación del mail
                    if (email.matches("^[_a-z0-9-]+(\\.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(\\.[a-z]{2,4})$")) {
                try {
                FileWriter fileWriter = new FileWriter ("C:/Users/USUARIO/Desktop/solicitudes.txt");
                PrintWriter printWriter = new PrintWriter(fileWriter);
                printWriter.printf("Nombre='%s'\r\nDescripcion='%s'\r\nE-mail='%s'\r\n",
                    nomApell, desc, email);
                printWriter.close();
                out.println("<h2> Ha funcionado </h2>");
                } catch (IOException e){
                    %> <h2 style="color: red">Fallo en fichero! </h2><%  
                }
                   }else 
                    out.print("<h3>Ponga una descripción... so vago.</h3>");
                }
            }else {%> <h3>¿Qué pasa, no tienes nombre?</h3> <%               
             }
            }
           
        %>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
    </body>
</html>
