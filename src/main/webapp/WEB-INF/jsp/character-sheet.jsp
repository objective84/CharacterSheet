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
<link href="resources/css/global.css" rel="stylesheet">

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
                        <td>${characterModel.race.raceName}</td>
                    </c:otherwise>
                </c:choose>
                <td><spring:message code="character.class"/></td>
                <c:choose>
                    <c:when test="${create}">
                        <td><form:select id="class-select" path="clazz">
                            <form:option value="0" label="Select a class"/>
                            <c:forEach items="${classes}" var="clazz">
                                <form:option value="${clazz.id}" label="${clazz.name}"/>
                            </c:forEach>
                        </form:select></td>
                    </c:when>
                    <c:otherwise>
                        <td>${characterModel.clazz.name}</td>
                    </c:otherwise>
                </c:choose>
            </tr>
            <tr >
                <td><spring:message code="character.level"/></td>
                <td><form:input cssClass="input-box-small" id="level" path="level" readonly="true"/></td>

            </tr>
            <tr >
                <td colspan="1"><spring:message code="character.maxHeath"/></td>
                <td><form:input cssClass="input-box-small" id="maxHealth" path="maxHealth" value="${character.maxHealth}" readonly="true"/></td>
                <td colspan="2"><spring:message code="character.currentHealth"/></td>
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
                        <a class="modLabel" id="${ability}Mod" value=""></a>
                    </td>

                </tr>
            </c:forEach>
        </table>
        <h3><spring:message code="character.proficiencies"/></h3>
        <div class="table_container">
            <table class="proficiencies" id="skillProfs">
                <tr><th>Skills</th></tr>
                <c:forEach items="${skillProficiencies}" var="skill">
                    <tr><td>${skill.name}</td></tr>
                </c:forEach>
            </table>
            <table class="proficiencies" id="toolProfs">
                <tr><th>Tools</th></tr>
                <c:forEach items="${toolProficiencies}" var="tool">
                    <tr><td>${tool.name}</td></tr>
                </c:forEach>
            </table>
            <table class="proficiencies" id="weaponProfs">
                <tr><th>Weapons</th></tr>
                <c:forEach items="${weaponProficiencies}" var="weapon">
                    <tr><td>${weapon.name}</td></tr>
                </c:forEach>
            </table>
            <table class="proficiencies" id="armorProfs">
                <tr><th>Armor</th></tr>
                <c:forEach items="${armorProficiencies}" var="armor">
                    <tr><td>${armor.name}</td></tr>
                </c:forEach>
            </table>
            <table class="proficiencies" id="saveProfs">
                <tr><th>Saving Throws</th></tr>
                <c:forEach items="${savingThrowProficiencies}" var="save">
                    <tr><td>${save.name}</td></tr>
                </c:forEach>
            </table>
        </div>
        <div class="clear">
        <br/>
        <h3><spring:message code="character.languages"/></h3>
        <table>
            <c:forEach items="${characterModel.race.languages}" var="language">
                <tr><td>${language.name}</td></tr>
            </c:forEach>
            <tr>

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
