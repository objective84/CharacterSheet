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
<link href="_ui/css/global.css" rel="stylesheet">

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
        </table>

        <h3><spring:message code="character.ability" /></h3>
        <table class="abilities">
            <tr>
                <td><spring:message code="ability.str"/></td>
                <td class="ability-input"><form:input cssClass="ability" id="str" path="str" /><a id="strMod">    </a></td>
                <td></td>
            </tr>
            <tr>
                <td><spring:message code="ability.dex"/></td>
                <td class="ability-input"><form:input cssClass="ability" id="dex" path="dex" /><a id="dexMod"></a>    </td>
                <td></td>
            </tr>
            <tr>
                <td><spring:message code="ability.con"/></td>
                <td class="ability-input"><form:input cssClass="ability" id="con" path="con" /><a id="conMod"></a>    </td>
                <td></td>
            </tr>
            <tr>
                <td><spring:message code="ability.int"/></td>
                <td class="ability-input"><form:input cssClass="ability" id="int" path="intel" /><a id="intMod"></a>    </td>
                <td></td>
            </tr>
            <tr>
                <td><spring:message code="ability.wis"/></td>
                <td class="ability-input"><form:input cssClass="ability" id="wis" path="wis" /><a id="wisMod">    </a>
                <td></td>
            </tr>
            <tr>
                <td><spring:message code="ability.cha"/></td>
                <td class="ability-input"><form:input cssClass="ability" id="cha" path="cha" /><a id="chaMod">    </a></td></td>
                <td></td>
            </tr>
        </table>
        <tr colspan="3">
            <td>
                <input type="submit" value="Save"/>
            </td>
        </tr>
    </form:form>

</body>
</html>
