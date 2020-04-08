<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href='<c:url value="/css/style.css"/>' rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>
<header>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
    <link href='<c:url value="/css/style.css"/>' rel="stylesheet" type="text/css">

    <nav class="nav">
        <ul>
            <li><a href="">Main page</a>
            <li><a href="${pageContext.request.contextPath}/group">Group</a>
            <li><a href="#">Admin panel</a>
        </ul>
    </nav>
</header>
</body>
</html>
