<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Programming school</title>
    <%@include file="header.jsp" %>
    <link href='<c:url value="/css/table.css"/>' rel="stylesheet" type="text/css">
    <link href='<c:url value="/css/styles.css"/>' rel="stylesheet" type="text/css">
</head>
<body>

<section>
    <div>
        <table class="content-table">
            <thead  >
            <tr>
                <td>User name</td>
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
</section>

<aside>
    <div>
        <table class="content-table">
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
                    <td>${sol.exercise}</td>
                    <td>${sol.updated}</td>
                    <td>${sol.description}</td>
                    <td>${sol.point}</td>
                    <td>${sol.commentar}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</aside>

</body>
<footer>
    <%@include file="footer.jsp" %>
</footer>
</html>