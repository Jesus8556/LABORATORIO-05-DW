<%-- 
    Document   : jstl_fmt_a
    Created on : 19/04/2023, 09:37:34 PM
    Author     : Luis
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>


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
            <div style="width: 450px; text-align: center; margin: 50px auto;">
                <c:set var="numero" value="123.1234567"/>
                <c:set var="fecha" value="<%=new Date() %>"/>
                <div class="card" style="width: 18rem;">
                <div class="card-body">
                <h5 class="card-title">Etiquetas JSTL</h5>
                <p class="card-text">Uso de FMT</p>
                </div>
                <ul class="list-group list-group-flush">
                <li class="list-group-item">Numero sin formato: <br>
                    <c:out value="${numero}"/></li>
                <li class="list-group-item">Numero con formato1: <br>
                    <fmt:formatNumber pattern="0.00" value="${numero}"/></li>
                <li class="list-group-item">Numero con formato2: <br>
                    <fmt:formatNumber pattern="0000.00" value="${numero}"/></li>
                <li class="list-group-item">Fecha sin formato: <br>
                    <c:out value="${fecha}"/></li>
                <li class="list-group-item">Fecha con formato: <br>
                    <fmt:formatDate pattern="yyyy-MM-DD" value="${fecha}"/></li>
                </ul>
                </div>
            </div>
        </div>
    </body>



    

    


</html>