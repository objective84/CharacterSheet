<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<body>
    <a href="characterlist.html">Character List</a>
    <br/>
    <spring:url value="/admin.html" var="admin"/>
        <a href="${admin}">Admin</a>
</body>
</html>
