<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin panel</title>
    <%@include file="header.jsp" %>
    <link href='<c:url value="/css/header.css"/>' rel="stylesheet" type="text/css">
    <link href='<c:url value="/css/styles.css"/>' rel="stylesheet" type="text/css">
    <link href='<c:url value="/css/table.css"/>' rel="stylesheet" type="text/css">
</head>
<body>

<section>
    <%@include file="vertical-menu.jsp"%>
</section>
<aside>
    <div>
        <table class="content-table">
            <thead>
            <tr>
                <td>Group name</td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="group" items="${requestScope.groups}">
                <tr>
                    <td>${group.name}</td>
                    <td>
                        <form action="${pageContext.request.contextPath}/?todo=${sol.id}" method="post">
                            <button class="button button4" type="submit">Edit</button>
                        </form>
                    </td>
                    <td><form action="${pageContext.request.contextPath}/?todo=${sol.id}" method="post">
                        <button class="button button2" type="submit">Delete</button>
                    </form></td>
                    <td><a href="${pageContext.request.contextPath}/group/list?groupId=${group.id}">Edit</a></td>
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