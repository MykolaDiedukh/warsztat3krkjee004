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
                <td>Configuration solutions</td>
                <td></td>

            </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Add exercise for user</td>
                    <td>
                        <button onclick="location.href='<%=request.getContextPath()%>/panel/solutions/add-solution'" class="button button1">
                            Add
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>Set points and commenter for solutions</td>
                    <td>
                        <button onclick="location.href='<%=request.getContextPath()%>/panel/solutions/add-solution-point'" class="button button1">
                            Set
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</aside>

</body>
<footer>
    <%@include file="footer.jsp" %>
</footer>
</html>