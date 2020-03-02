<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<nav class="container container--70">
    <sec:authorize access="isAuthenticated()">
        <ul class="nav--actions">
            <li class="logged-user">
                Witaj <sec:authentication property="principal.username"/>
                <ul class="dropdown">
                    <li><a href="#">Profil</a></li>
                    <li><a href="#">Moje zbiórki</a></li>
                    <li><a href="<c:url value="/logout"/>">Wyloguj</a></li>
                </ul>
            </li>
        </ul>
    </sec:authorize>
    <ul>
        <li><a href="<c:url value="/"/>" class="btn btn--without-border active">Start</a></li>
        <li><a href="index.html#steps" class="btn btn--without-border">O co chodzi?</a></li>
        <li><a href="index.html#about-us" class="btn btn--without-border">O nas</a></li>
        <li><a href="index.html#help" class="btn btn--without-border">Fundacje i organizacje</a></li>
        <li><a href="index.html#contact" class="btn btn--without-border">Kontakt</a></li>
        <sec:authorize access="hasRole('ADMIN')">
            <li><a href="<c:url value="/admin/dashboard"/>" class="btn btn--without-border">ADMIN</a></li>
        </sec:authorize>
    </ul>
</nav>
</body>
</html>
