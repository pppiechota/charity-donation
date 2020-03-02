<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>

    <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
    <link href="<c:url value="/resources/css/sb-admin-2.min.css"/>" rel="stylesheet">
</head>
<body>
<div class="container">
    <form:form modelAttribute="institution" method="post" action="/admin/add-new">
        <div class="form-group">
            <label for="exampleInputEmail1">Nazwa instytucji</label>
            <form:input path="name" class="form-control" id="exampleInputEmail1"/>
            <form:errors path="name"/>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Krótki opis charakteru działań organizacji</label>
            <form:input path="description" class="form-control" id="exampleInputPassword1"/>
            <form:errors path="description"/>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form:form>
</div>

<script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/datatables/jquery.dataTables.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.min.js"/>"></script>
<script src="<c:url value="/resources/js/sb-admin-2.min.js"/>"></script>
<script src="<c:url value="/resources/js/demo/datatables-demo.js"/>"></script>
</body>
</html>
