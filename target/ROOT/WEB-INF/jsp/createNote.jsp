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

    <div class="d-flex flex-column justify-content-center">

        <form action="/createNote" method="post">
            <div class="form-group">
                <label for="noteTitle">Títol</label>
                <input type="text" name="noteTitle" class="form-control" id="noteTitle" placeholder="Títol de la nota">
            </div>
            <div class="form-group">
                <label for="noteContent">Contingut de la nota</label>
                <textarea name="noteContent" id="noteContent" cols="30" rows="10"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Enregistrar</button>
        </form>

    </div>

</main>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>
