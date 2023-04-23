<%-- 
    Document   : jstl_core_a
    Created on : 19/04/2023, 09:26:08 PM
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" type="text/css" />

    </head>
    <body>
        <div class="container mt-5">
            <form name="form" action="/WebJava05/Controlador">
                <div style="width: 250px; text-align: center; margin: 50px auto;">
                    <h1>Calculadora de Numeros</h1>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Numero 1</label>
                        <input type="text" name="_num1" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Numero 2</label>
                        <input type="text" name="_num2" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>

                    <div class="mb-3">

                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Seleccione la opcion a generar :</label>
                            <select name="_simbolo" class="form-control" id="exampleFormControlSelect1">
                                <option>+</option>
                                <option>-</option>
                                <option>*</option>
                                <option>/</option>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </div>
            </form>
        </div>
    </body>






</html>