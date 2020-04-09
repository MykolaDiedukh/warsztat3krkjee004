<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Programming school</title>
    <%@include file="header.jsp" %>
    <link href='<c:url value="/css/table.css"/>' rel="stylesheet" type="text/css">
</head>
<body>

<p>Groups:</p>
<table class="content-table">
    <thead>
    <tr>
        <td>Name of group</td>
        <td>Action</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="group" items="${requestScope.groups}">
        <tr>
            <td>${group.name}</td>
            <td><a href="${pageContext.request.contextPath}/group/list?groupId=${group.id}">Details</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
<footer>
    <%@include file="footer.jsp" %>
</footer>
</html>