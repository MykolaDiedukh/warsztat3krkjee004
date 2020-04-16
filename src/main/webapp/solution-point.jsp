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
    <%@include file="vertical-menu.jsp" %>
</section>
<aside>
    <div>
        <table class="content-table">
            <thead>
            <tr>
                <td>Exercise</td>
                <td>Solution Author</td>
                <td>Solution</td>
                <td>Date</td>
                <td>Point</td>
                <td>Comment</td>
                <td>

                </td>

            </tr>
            </thead>
            <tbody>
            <c:forEach var="solution" items="${requestScope.solutions}">
                <tr>
                    <td>${solution.exercise}</td>
                    <td>${solution.user}</td>
                    <td>${solution.description}</td>
                    <td>${solution.updated}</td>
                    <td>${solution.point}</td>
                    <td>${solution.commentar}</td>
                    <td>
                        <button onclick="location.href='<%=request.getContextPath()%>/panel/solutions/add-solution-point?id=${solution.id}'"
                                class="button button4">
                            Set
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