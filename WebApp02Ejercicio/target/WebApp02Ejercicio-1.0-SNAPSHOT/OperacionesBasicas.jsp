<%-- 
    Document   : OperacionesBasicas
    Created on : 01/04/2023, 08:55:04 PM
    Author     : andga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.miempresa.funciones.OperacionesBasicas" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col">
                    <div class="card text-dark bg-warning mb-3" style="max-width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Resultado</h5>
                            <p class="card-text"><% 
                                String operacion = request.getParameter("operacion");
                                double num1 = Double.parseDouble(request.getParameter("num1"));
                                double num2 = Double.parseDouble(request.getParameter("num2"));
                                OperacionesBasicas op = new OperacionesBasicas();
                                switch(operacion) {
                                        case "suma":
                                            out.println("<p>" + op.suma(num1, num2)+ "</p>");
                                            break;
                                        case "resta":
                                            out.println("<p>" + op.resta(num1, num2)+ "</p>");
                                            break;
                                        case "multiplicacion":
                                            out.println("<p>" + op.multiplicacion(num1, num2)+ "</p>");
                                            break;
                                        case "division":
                                            out.println("<p>" + op.division(num1, num2)+ "</p>");
                                            break;
                                        default:
                                            out.println("<p>No se seleccionó ninguna operación.</p>");
                                            break;
                                    }
                            %></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
