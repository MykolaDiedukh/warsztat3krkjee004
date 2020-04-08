<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Programming school</title>
    <%@include file="header.jsp" %>
</head>
<body>
<p>Details of user:</p>
<div>
<table>
    <thead>
    <tr>
        <td>Name of user</td>
        <td>email</td>
    </tr>
    </thead>
    <tbody>
        <tr>
            <td>${requestScope.details.username}</td>
            <td>${requestScope.details.email}</td>
        </tr>
    </tbody>
</table>
</div>
<table>
    <thead>
    <tr>
        <td>Exercise name</td>
        <td>Date</td>
        <td>Solution</td>
        <td>Point</td>
        <td>Comment</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="sol" items="${requestScope.solutionsOfUser}">
        <tr>
            <td>${sol.exerciseId}</td>
            <td>${sol.updated}</td>
            <td>${sol.description}</td>
            <td>${sol.point}</td>
            <td>${sol.commentar}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</div>
</body>
<footer>
    <%@include file="footer.jsp" %>
</footer>
</html>