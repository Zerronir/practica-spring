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
    <title>Hello, user!</title>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <div class="container-fluid d-flex justify-content-between">
                <a class="navbar-brand" href="/">Inici</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="/myNotes">Les meves notes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/sharedNotes">Notes compartides amb jo</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/oldVersions">Versions</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="/profile" tabindex="-1" aria-disabled="true">Perfil</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>

<main class="container">

    <article class="d-flex justify-content-center mt-3">
        <article class="col-12 col-md-8 d-flex flex-column">
            <h1 class="display-1 text-center">Login</h1>
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
        <form class="col-12 col-md-8" action="/login" method="post">
            <div class="form-group">
                <label for="username">El teu email:</label>
                <input type="text" class="form-control" id="username" name="username" aria-describedby="emailHelp" placeholder="Escriu el teu nickname">
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