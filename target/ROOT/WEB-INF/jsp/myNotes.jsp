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

        <c:if test="${not empty userNotes}">
            <a href="/createNote" class="btn btn-primary">Nova nota</a>
        </c:if>

        <div class="d-flex flex-wrap justify-content-between">
            <c:choose>
                <c:when test="${not empty userNotes}">
                    <c:forEach var="n" items="${userNotes}">
                        <div class="card" style="width: 36rem; margin-top: 15px; margin-bottom: 15px">
                            <div class="card-body justify-content-center">
                                <h5 class="card-title">${n.getNoteTitle()}</h5>
                                <c:set var="shortText" value="${fn:substring(n.getNoteContent(), 0, 10)}" />
                                <p class="card-text">${shortText}...</p>
                                <a href="/viewNote/${n.getNoteId()}" class="btn btn-primary">Veure la nota</a>
                                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal">
                                    Eliminar nota
                                </button>
                            </div>
                        </div>


                        <!-- Modal delete -->
                        <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModal" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Vols eliminar la nota</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <p>Estàs segur de que vols eliminar la nota ${n.getNoteTitle()}.</p>
                                    </div>
                                    <div class="modal-footer">
                                        <a href="/deleteNote/${n.getNoteId()}" class="btn btn-danger">Si, elimina la nota.</a>
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">No, tancar.</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- -->

                    </c:forEach>
                </c:when>

                <c:otherwise>
                    <div>
                        <h2 class="display-2">Crea la teva primera nota</h2>
                        <a href="/createNote" class="btn btn-primary">Nova nota</a>
                    </div>
                </c:otherwise>

            </c:choose>
        </div>

    </div>

</main>

<jsp:include page="includes/footer.jsp" />
</body>
</html>
