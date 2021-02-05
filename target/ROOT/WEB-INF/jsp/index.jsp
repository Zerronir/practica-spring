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

<!-- HEADER -->
<jsp:include page="./includes/header.jsp" />
<!-- -->

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
