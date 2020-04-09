<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Programming school</title>
    <%@include file="header.jsp" %>
    <link href='<c:url value="/css/table.css"/>' rel="stylesheet" type="text/css">
</head>
<body>
<p>Details of solution:</p>
<table>
    <thead class="content-table">
    <tr>
        <td>Exercise name</td>
        <td>Date</td>
        <td>Solution</td>
        <td>Point</td>
        <td>Comment</td>
    </tr>
    </thead>
    <tbody>
        <tr>
            <td>${requestScope.solDetails.exerciseId}</td>
            <td>${requestScope.solDetails.updated}</td>
            <td>${requestScope.solDetails.description}</td>
            <td>${requestScope.solDetails.point}</td>
            <td>${requestScope.solDetails.commentar}</td>
        </tr>
    </tbody>
</table>
</div>
</body>
<footer>
    <%@include file="footer.jsp" %>
</footer>
</html>