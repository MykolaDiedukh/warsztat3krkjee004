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
        <form action="${pageContext.request.contextPath}/panel/solutions/add-solution-point?id=${requestScope.solutions.id}" method="post">
            <table class="content-table">
                <thead>
                <tr>
                    <td>
                        <button class="button button1" type="submit">Save</button>
                    </td>
                    <td></td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><label>Exercise</label></td>
                    <td><input name="exercise" type="text" value="${requestScope.solutions.exercise}" readonly required/></td>
                </tr>
                <tr>
                    <td><label>Solution Author</label></td>
                    <td><input type="text" name="author" value="${requestScope.solutions.user}" readonly required/></td>
                </tr>
                <tr>
                    <td><label>Solution</label></td>
                    <td><input class="input" type="text" name="solution" value="${requestScope.solutions.description}" readonly required/></td>
                </tr>
                <tr>
                    <td><label>Date</label></td>
                    <td><input class="input" type="text" name="date" value="${requestScope.solutions.updated}" readonly required/></td>
                </tr>
                <tr>
                    <td><label>Point</label></td>
                    <td><input class="input" type="text" name="point" value="${requestScope.solutions.point}" required/></td>
                </tr>
                <tr>
                    <td><label>Comment</label></td>
                    <td><input class="input" type="text" name="comment" value="${requestScope.solutions.commentar}" required/></td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
</aside>

</body>
<footer>
    <%@include file="footer.jsp" %>
</footer>
</html>