<%--
  Created by IntelliJ IDEA.
  User: Raul
  Date: 09/11/2020
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="es">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Register</title>
</head>
<body>

<!-- HEADER -->
<jsp:include page="./includes/header.jsp" />
<!-- -->

<main class="container">

    <article class="d-flex justify-content-center mt-3">
        <article class="col-12 col-md-8 d-flex flex-column">
            <h1 class="display-1 text-center">Register</h1>
        </article>
    </article>

    <article class="d-flex justify-content-center mt-3">
        <article class="col-12 col-md-8">
            <c:if test="${not empty err}">
                <div class="alert alert-danger" role="alert">
                        ${err}
                </div>
            </c:if>
        </article>
    </article>

    <article class="d-flex justify-content-center mt-3">
        <form class="col-12 col-md-8" action="/doRegister" method="post">
            <div class="form-group">
                <label for="name">Nom:</label>
                <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp" placeholder="Escriu el teu nom">
            </div>
            <div class="form-group">
                <label for="surname">El teu email:</label>
                <input type="text" class="form-control" id="surname" name="surname" aria-describedby="emailHelp" placeholder="Escriu el teu llinatge">
            </div>
            <div class="form-group">
                <label for="nickname">Nick:</label>
                <input type="text" class="form-control" id="nickname" name="nickname" aria-describedby="emailHelp" placeholder="Escriu el teu nickname">
            </div>
            <div class="form-group">
                <label for="email">El teu email:</label>
                <input type="text" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Escriu el teu correu">
                <small id="emailHelp" class="form-text text-muted">No compartirem les teves dades personals amb tercers.</small>
            </div>
            <div class="form-group">
                <label for="password">Contrasenya:</label>
                <input type="password" class="form-control" id="password" placeholder="La teva contrasenya" name="password">
            </div>
            <button type="submit" class="btn btn-primary">Fer login</button>
        </form>
    </article>
</main>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>