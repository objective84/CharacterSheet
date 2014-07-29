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
        <input id="characterId" name="id" type="hidden" value="${character.id}"/>
        <table>
            <tr>
                <td><spring:message code="character.name"/></td>
                <td><form:input id="name" path="name" /></td>

                <td><spring:message code="character.race"/></td>
                <c:choose>
                    <c:when test="${create}">
                        <td><form:select id="race" path="race">
                            <form:option value="0" label="Select a race"/>
                            <c:forEach items="${races}" var="race">
                                <form:option value="${race.id}" label="${race.raceName}"/>
                            </c:forEach>
                        </form:select></td>
                    </c:when>
                    <c:otherwise>
                        <td>${character.race}</td>
                    </c:otherwise>
                </c:choose>

                <td><spring:message code="character.class"/></td>
                <c:choose>
                    <c:when test="${create}">
                        <td><form:select id="class" path="classType">
                            <form:option value="0" label="Select a class"/>
                            <c:forEach items="${classes}" var="clazz">
                                <form:option value="${clazz.id}" label="${clazz.name}"/>
                            </c:forEach>
                        </form:select></td>
                    </c:when>
                    <c:otherwise>
                        <td>${character.classType}</td>
                    </c:otherwise>
                </c:choose>
            </tr>
            <tr >
                <td><spring:message code="character.level"/></td>
                <td><form:input cssClass="input-box-small" id="level" path="level" readonly="true"/></td>

            </tr>
            <tr >
                <td colspan="1"><spring:message code="character.maxHeath"/></td>
                <td>${character.maxHealth}</td>
                <td colspan="1"><spring:message code="character.currentHealth"/></td>
                <td><form:input cssClass="input-box-small" id="currentHealth" path="currentHealth" /></td>
                <td></td>
            </tr>
        </table>

        <h3><spring:message code="character.ability" /></h3>
        <table class="abilities">
            <c:forEach items="${abilityTypes}" var="ability">
                <tr>
                    <td>${ability}</td>
                    <td class="ability-input">
                        <form:input cssClass="input-box-small ability"
                                    id="${ability}"
                                    path="abilityScores['${ability}']"
                                    value="${character.abilityScores.value}"
                                    readonly="${!create}"/>
                        <a class="modLabel" id="${ability}Mod"></a>
                    </td>

                </tr>
            </c:forEach>

            <%--<tr>--%>
                <%--<td><spring:message code="ability.str"/></td>--%>
                <%--<td class="ability-input"><form:input cssClass="input-box-small" id="str" path="str" /><a id="strMod">    </a></td>--%>
                <%--<td></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td><spring:message code="ability.dex"/></td>--%>
                <%--<td class="ability-input"><form:input cssClass="input-box-small" id="dex" path="dex" /><a id="dexMod"></a>    </td>--%>
                <%--<td></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td><spring:message code="ability.con"/></td>--%>
                <%--<td class="ability-input"><form:input cssClass="input-box-small" id="con" path="con" /><a id="conMod"></a>    </td>--%>
                <%--<td></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td><spring:message code="ability.int"/></td>--%>
                <%--<td class="ability-input"><form:input cssClass="input-box-small" id="int" path="intel" /><a id="intMod"></a>    </td>--%>
                <%--<td></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td><spring:message code="ability.wis"/></td>--%>
                <%--<td class="ability-input"><form:input cssClass="input-box-small" id="wis" path="wis" /><a id="wisMod">    </a>--%>
                <%--<td></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td><spring:message code="ability.cha"/></td>--%>
                <%--<td class="ability-input"><form:input cssClass="input-box-small" id="cha" path="cha" /><a id="chaMod">    </a></td></td>--%>
                <%--<td></td>--%>
            <%--</tr>--%>
        </table>
        <tr colspan="3">
            <td>
                <input type="submit" value="Save"/>
            </td>
        </tr>
    </form:form>

</body>
</html>
