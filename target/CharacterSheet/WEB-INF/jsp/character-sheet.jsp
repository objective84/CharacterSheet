<%--
  Created by IntelliJ IDEA.
  User: PVarnerHowland
  Date: 7/22/2014
  Time: 2:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>

<html>
<head>
    <title>${character.name}</title>
    <template:javascript/>
</head>
<body>
    <form:form id="characterForm" commandName="character">
        <c:choose>
            <c:when test="${character.id != undefined}">
                <c:set var="charId" value="${character.id}"/>
            </c:when>
            <c:otherwise>
                <c:set var="charId" value="0"/>
            </c:otherwise>
        </c:choose>
        <input id="characterId" type="hidden" value="${charId}"/>
        <table>
            <tr>
                <td><spring:message code="character.name"/></td>
                <td><form:input id="name" path="name" /></td>

                <td><spring:message code="character.race"/></td>
                <td><form:input id="race" path="race" /></td>

                <td><spring:message code="character.class"/></td>
                <td><form:input id="class" path="classType" /></td>
            </tr>
            <tr>
                <td><spring:message code="character.ability" /></td>
            </tr>
                <tr>
                    <td><spring:message code="ability.str"/></td>
                    <td><form:input id="str" path="str" /></td>
                </tr>
                <tr>
                    <td><spring:message code="ability.dex"/></td>
                    <td><form:input id="dex" path="dex" /></td>
                </tr>
                <tr>
                    <td><spring:message code="ability.con"/></td>
                    <td><form:input id="con" path="con" /></td>
                </tr>
                <tr>
                    <td><spring:message code="ability.int"/></td>
                    <td><form:input id="int" path="intel" /></td>
                </tr>
                <tr>
                    <td><spring:message code="ability.wis"/></td>
                    <td><form:input id="wis" path="wis" /></td>
                </tr>
                <tr>
                    <td><spring:message code="ability.cha"/></td>
                    <td><form:input id="cha" path="cha" /></td>
                </tr>
            <tr colspan="3">
                <td>
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form:form>

</body>
</html>
