<%--
  Created by IntelliJ IDEA.
  User: pvnnn
  Date: 20-06-2022
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Autos</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous">
</head>
<body>
<div class="container">

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Nombre</th>
            <th scope="col">Categoria</th>
            <th scope="col">Año</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="pelicula" items="${peliculasCapturadas}" >
            <tr>
                <th scope="row">${pelicula.id}</th>
                <td>${pelicula.nombre}</td>
                <td>${pelicula.categoria}</td>
                <td>${pelicula.anio}</td>
                <td><a class="btn btn-warning" href="/auto/editar/${pelicula.id}" role="button">Editar</a></td>
                <td><a class="btn btn-danger" href="/auto/eliminar/${pelicula.id}" role="button">Eliminar</a></td>

            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

</body>
</html>
