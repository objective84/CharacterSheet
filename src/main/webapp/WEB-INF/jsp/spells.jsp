<%--
  Created by IntelliJ IDEA.
  User: PVarnerHowland
  Date: 7/24/2014
  Time: 11:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>
<link href="resources/css/global.css" rel="stylesheet">

<html>
<head>
    <title>Spells</title>
    <template:javascript/>
</head>
<body>
    <table>
        <tr><td>Spells:</td></tr>
        <c:forEach items="${allSpells}" var="spell">
            <tr>
                <td><a class="entry-link" href="#" id="${spell.id}">${spell.name}</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
