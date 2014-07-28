<%--
  Created by IntelliJ IDEA.
  User: PVarnerHowland
  Date: 7/22/2014
  Time: 3:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>

<html>
<head>
    <title>Characters</title>
    <template:javascript/>
</head>
<body>
    <form:form id="characterForm" commandname="character">
        <input type="hidden" id="id" name="id" value=""/>
    <table>
        <c:forEach items="${characters}" var="character">
            <tr>
                <td><a href="#no" onclick="submit(${character.id})"/>${character.name} - ${character.race} ${character.classType}</td>
            </tr>
        </c:forEach>

        <tr>
            <td>
                <a href="#" onclick="submitCharacter()">Create new character</a>
            </td>
        </tr>

    </table>
    </form:form>
</body>
</html>
