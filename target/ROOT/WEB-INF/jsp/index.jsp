<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Hello World!</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
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

    <div class="d-flex flex-column">
        <h2 class="display-2">Hola</h2>
        <p>Has d'iniciar sessió per a poder veure les teves notes.</p>
        <p><a href="${pageContext.request.contextPath}/login">Iniciar sessió</a></p>
        <p><a href="${pageContext.request.contextPath}/register">Dona't d'alta</a></p>
    </div>

    <div>
        <c:choose>
            <c:when test="${user != null}">
                <h1>Hola ${user.getName()}</h1>
            </c:when>
        </c:choose>
    </div>

</main>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>
