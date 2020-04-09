<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang=''>
<head>
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='<c:url value="/css/header.css"/>' rel="stylesheet" type="text/css">
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <title>Navbar</title>
</head>
<body>
<header>
    <div id='cssmenu'>
        <ul>
            <li><a href="${pageContext.request.contextPath}/">Main page</a>
            <li><a href="${pageContext.request.contextPath}/group">Group</a>
            <li><a href="${pageContext.request.contextPath}/panel">Admin panel</a>
        </ul>
    </div>
</header>
</body>
</html>
