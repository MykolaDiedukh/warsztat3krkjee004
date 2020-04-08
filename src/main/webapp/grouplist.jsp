<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Programming school</title>
    <%@include file="header.jsp" %>
</head>
<body>
<p>Users:</p>
<table>
    <thead>
    <tr>
        <td>Name of user</td>
        <td>Action</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${requestScope.users}">
        <tr>
            <td>${user.username}</td>
            <td><a href="${pageContext.request.contextPath}/group/list/details?userid=${user.id}">Details</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
<footer>
    <%@include file="footer.jsp" %>
</footer>
</html>