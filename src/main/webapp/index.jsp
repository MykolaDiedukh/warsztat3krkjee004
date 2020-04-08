<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Programming school</title>
    <%@include file="header.jsp" %>
</head>
<body>
<p>Solutions:</p>
<table>
    <thead>
    <tr>
        <td>Exercise name</td>
        <td>Solution author</td>
        <td>Date</td>
        <td>Actions</td>
    </tr>
    </thead>
    <tbody>

    <c:forEach var="group" items="${requestScope.solutions}">
        <tr>
            <td>${group.exerciseId}</td>
            <td>${group.description}</td>
            <td>${group.created}</td>
            <td><a href="#">${group.userId}</a></td>
        </tr>
    </c:forEach>

    </tbody>
</table>
</body>
<footer>
    <%@include file="footer.jsp" %>
</footer>
</html>