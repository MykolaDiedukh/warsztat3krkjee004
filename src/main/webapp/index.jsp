<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Programming school</title>
    <%@include file="header.jsp" %>
    <link href='<c:url value="/css/table.css"/>' rel="stylesheet" type="text/css">
</head>
<body>
<p>Solutions:</p>
    <div>
        <table class="content-table">
            <thead>
            <tr>
                <td>Exercise name</td>
                <td>Solution author</td>
                <td>Date</td>
                <td>Actions</td>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="sol" items="${requestScope.solutions}">
                <tr>
                    <td>${sol.exerciseId}</td>
                    <td>${sol.description}</td>
                    <td>${sol.created}</td>
                    <td>
                        <form action="${pageContext.request.contextPath}/?solutionid=${sol.id}" method="post">
                            <button type="submit">Details</button>
                        </form>
                    </td>
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