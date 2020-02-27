<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>

    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
</head>
<body>
<jsp:include page="header-form.jsp"/>

<section class="form--steps">
    <div class="form--steps-container">
        <form>
            <!-- STEP 5 -->
            <div data-step="5">
                <h3>Podsumowanie Twojej darowizny</h3>

                <div class="summary">
                    <div class="form-section">
                        <h4>Oddajesz:</h4>
                        <ul>
                            <li>
                                <span class="icon icon-bag"></span>
                                <%--                                to nie działa, bo w tym momencie nie ma wypełnionej donacji przekazanej--%>
                                <span class="summary--text">${submitted.quantity} worki - <c:forEach
                                        items="${submitted.categories}" var="c">${c.name} </c:forEach></span>
                            </li>

                            <li>
                                <span class="icon icon-hand"></span>
                                <span class="summary--text">${submitted.institution.name}</span>
                            </li>
                        </ul>
                    </div>

                    <div class="form-section form-section--columns">
                        <div class="form-section--column">
                            <h4>Adres odbioru:</h4>
                            <ul>
                                <li>${submitted.street}</li>
                                <li>${submitted.city}</li>
                                <li>${submitted.zipCode}</li>
                            </ul>
                        </div>

                        <div class="form-section--column">
                            <h4>Termin odbioru:</h4>
                            <ul>
                                <li>${submitted.pickUpDate}</li>
                                <li>${submitted.pickUpTime}</li>
                                <li>${submitted.pickUpComment}<c:if test="${empty submitted.pickUpComment}">Brak
                                    uwag</c:if></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" onclick="location.href='/donation/confirmation';" class="btn">Potwierdzam
                    </button>
                </div>
            </div>
        </form>
    </div>
</section>

<jsp:include page="footer.jsp"/>
<script src="<c:url value="/resources/js/app.js"/>"></script>
<script src="<c:url value="/resources/js/myScripts.js"/>"></script>
</body>
</html>
