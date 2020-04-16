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
                <td>
                    <form action="${pageContext.request.contextPath}/panel/group/add-group" method="get">
                    <button class="button button1" type="submit">Add</button>
                    </form>
                </td>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="group" items="${requestScope.groups}">
                <tr>
                    <td>${group.name}</td>
                    <td>
                        <button onclick="location.href='<%=request.getContextPath()%>/panel/group/edit-group?id=${group.id}'" class="button button4">
                            Edit
                        </button>
                    </td>
                    <td>
                        <button onclick="location.href='<%=request.getContextPath()%>/panel/group/delete-group?id=${group.id}'" class="button button2">
                            Delete
                        </button>
                    </td>
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