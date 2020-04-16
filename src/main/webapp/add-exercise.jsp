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
        <form action="${pageContext.request.contextPath}/panel/exercises/add-exercise" method="post">
            <table class="content-table">
                <thead>
                <tr>
                    <td>
                        <button class="button button1" type="submit">Add</button>
                    </td>
                    <td></td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><label>Title</label></td>
                    <td><input name="title" type="text" placeholder="Title" required/></td>
                </tr>
                <tr>
                    <td><label>Description</label></td>
                    <td><input type="text" name="description" placeholder="Description" required/></td>
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