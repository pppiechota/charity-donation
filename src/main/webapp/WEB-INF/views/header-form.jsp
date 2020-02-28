<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<nav class="container container--70">
    <ul class="nav--actions">
        <li class="logged-user">
            Witaj Agata
            <ul class="dropdown">
                <li><a href="#">Profil</a></li>
                <li><a href="#">Moje zbiórki</a></li>
                <li><a href="#">Wyloguj</a></li>
                <li><sec:authorize access="isAuthenticated()">
                    <form action="<c:url value="/logout"/>" method="post">
                        <input type="submit" value="Wyloguj">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </sec:authorize></li>
            </ul>
        </li>
    </ul>
    <ul>
        <li><a href="index.html" class="btn btn--without-border active">Start</a></li>
        <li><a href="index.html#steps" class="btn btn--without-border">O co chodzi?</a></li>
        <li><a href="index.html#about-us" class="btn btn--without-border">O nas</a></li>
        <li><a href="index.html#help" class="btn btn--without-border">Fundacje i organizacje</a></li>
        <li><a href="index.html#contact" class="btn btn--without-border">Kontakt</a></li>
    </ul>
</nav>
</body>
</html>
