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
        <form action="${pageContext.request.contextPath}/panel/users/edit-user?id=${requestScope.users.id}" method="post">
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
                    <td><label>User name</label></td>
                    <td><input name="username" type="text" value="${requestScope.users.username}" required/></td>
                </tr>
                <tr>
                    <td><label>Email</label></td>
                    <td><input type="text" name="email" value="${requestScope.users.email}" required/></td>
                </tr>
                <tr>
                    <td><label>Group</label></td>
                    <td>
                        <select name="userGroup">
                            <option value="${requestScope.users.userGroupId}">${requestScope.users.usersGroup}</option>
                            <c:forEach var="group" items="${requestScope.groups}">
                                <option value="${group.id}">${group.name}</option>
                            </c:forEach>
                        </select>
                    </td>
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