<%--
  Created by IntelliJ IDEA.
  User: home
  Date: 05.10.2022
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

</head>

<body>
<%
    String message = (String) request.getAttribute("user");
%>


<c:set var="user" scope="session"> ${param.user}

</c:set>

<c:choose>
    <c:when test="${fn:contains(user, 'opr' ) }">
        <p>Browser: Opera</p>
    </c:when>
    <c:when test="${fn:contains(theString, 'edg' ) }">
        <p>Browser: Edge</p>
    </c:when>
    <c:when test="${val == 2}">
        <p>Equals to 2</p>
    </c:when>
    <c:otherwise>
        <p>Undefined</p>
    </c:otherwise>
</c:choose>
</body>
</head>

</body>
</html>
