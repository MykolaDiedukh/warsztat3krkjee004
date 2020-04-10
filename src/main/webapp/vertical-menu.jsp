<%--
  Created by IntelliJ IDEA.
  User: soul
  Date: 4/10/20
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link href='<c:url value="/css/vertical-menu.css"/>' rel="stylesheet" type="text/css">
    <title>Title</title>
</head>
<body>
<div class="category-wrap">
    <h3>Categories</h3>
    <ul>
        <li><a href="${pageContext.request.contextPath}/panel/groups">Groups</a></li>
        <li><a href="${pageContext.request.contextPath}/panel/users">Users</a></li>
        <li><a href="${pageContext.request.contextPath}/panel/solutions">Solutions</a></li>
    </ul>
</div>
</body>
</html>
