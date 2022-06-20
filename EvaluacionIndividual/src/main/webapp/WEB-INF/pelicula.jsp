<%--
  Created by IntelliJ IDEA.
  User: pvnnn
  Date: 20-06-2022
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Peliculas</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous">
</head>
<body>
<div class="container">
    <c:if test="${msgError!= null}">
        <c:out value="${msgError}"></c:out>
    </c:if>

    <%--@elvariable id="pelicula" type="Pelicula"--%>
    <form:form action="/auto/guardar" method="post" modelAttribute="pelicula">
        <form:label path="nombre" class="form-label" >Nombre:</form:label>
        <form:input path="nombre" class="form-control" />
        <br>
        <form:label path="categoria" class="form-label">Categoria:</form:label>
        <form:input path="categoria" class="form-control"/>
        <br>
        <form:label path="anio" class="form-label">Año:</form:label>
        <form:input type="number" path="anio" class="form-control"/>

        <br>
        <input type="submit" value="Guardar Auto">
        <button type="submit" class="btn btn-primary">Guardar Auto</button>
        <button type="submit" class="btn btn-outline-primary">Guardar Auto</button>
    </form:form>
</div>



</body>
</html>
