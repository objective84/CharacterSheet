<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<body>
    <spring:url value="/characterlist.html" var="characterlist"/>
    <spring:url value="/spells.html" var="spells"/>

    <a href="${characterlist}">Character List</a>
    <br/>
    <a href="${spells}">Spell Book</a>
</body>
</html>
