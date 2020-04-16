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

<article>
    <div>
        <table class="content-table">
            <thead>
            <tr>
                <td>User name</td>
                <td>Action</td>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${requestScope.users}">
                <tr>
                    <td>${user.username}</td>
                    <td>
                        <button onclick="location.href='<%=request.getContextPath()%>/group/list/details?userid=${user.id}'" class="button button3">
                            Details
                        </button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</article>

</body>
<footer>
    <%@include file="footer.jsp" %>
</footer>
</html>