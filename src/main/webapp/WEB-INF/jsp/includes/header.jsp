<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                        <c:choose>
                            <c:when test="${not empty user}">
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
                                    <a class="nav-link" href="/profile" tabindex="-1" aria-disabled="true">Perfil</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="/logout" tabindex="-1" aria-disabled="true">Tanca sessió</a>
                                </li>
                            </c:when>

                            <c:otherwise>
                                <li class="nav-item">
                                    <a class="nav-link" href="/login" tabindex="-1" aria-disabled="true">Inicia sesió</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/register" tabindex="-1" aria-disabled="true">Registra't</a>
                                </li>
                            </c:otherwise>

                        </c:choose>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>