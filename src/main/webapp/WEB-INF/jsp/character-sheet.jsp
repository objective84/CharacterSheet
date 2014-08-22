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
<%@ taglib prefix="modals" tagdir="/WEB-INF/tags/modals" %>
<link href="resources/css/global.css" rel="stylesheet">

<html>
<head>
    <title>${character.name}</title>
    <template:javascript/>
</head>
<body>
    <div id="character-sheet">
        <form:form id="characterForm" commandName="character">
        <input type="hidden" id="pathContext" value="${pageContext.request.contextPath}">
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
                                <form:option value="${race.id}" label="${race.name}"/>
                            </c:forEach>
                        </form:select></td>
                    </c:when>
                    <c:otherwise>
                        <td>${characterModel.race.name}</td>
                    </c:otherwise>
                </c:choose>
                <td class="subraces">
                <td><spring:message code="character.subrace"/></td>
                <c:choose>
                    <c:when test="${create}">
                        <td><select id="subrace" class="subraces">
                            <option value="0">Select a sub-race</option>
                        </select></td>
                    </c:when>
                    <c:otherwise>
                        <td>${characterModel.subrace.name}</td>
                    </c:otherwise>
                </c:choose>
                </td>
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
                <td colspan="2">
                    <form:input cssClass="input-box-small" id="level" path="level" readonly="true"/>
                    <spring:message code="character.ac"/>
                    <input class="input-box-small" id="armor-class" readonly="true"/>
                </td>

            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <spring:message code="character.maxHeath"/>
                    <form:input cssClass="input-box-small" id="maxHealth" path="maxHealth" value="${character.maxHealth}" readonly="true"/>
                    <spring:message code="character.currentHealth"/>
                    <form:input cssClass="input-box-small" id="currentHealth" path="currentHealth" />
                    <spring:message code="character.speed"/>
                    <form:input cssClass="input-box-small" id="speed" path="speed" />
                </td>
            </tr>
        </table>
        <br/>
        <c:if test="${create}">
            <c:set var="placeholderShow" value='show'/>
            <c:set var="minusHide" value="style='display: none;'"/>
        </c:if>
        <div class="table_container">
            <table class="side-by-side header">
                <tr>
                    <td><h3><spring:message code="character.ability" /><a href="#" id="ability-score-reset" class="link-small">Reset</a></h3></td>
                </tr>
                <tr>
                    <td><span id="ability-point-label"></span></td>
                </tr>
            </table>
            <table class="side-by-side currencyheader">
                <tr>
                    <td><h3><spring:message code="character.currency" /></h3></td>
                </tr>
            </table>
            <table class="side-by-side header">
                <tr>
                    <td><h3><spring:message code="character.equipped" /></h3></td>
                </tr>
            </table>
        </div>
        <div class="clear"/>
        <div class="table_container">
            <table class="side-by-side ability-row" id="abilties">
                <c:forEach items="${abilityTypes}" var="ability">
                    <tr>
                        <td>${ability}</td>
                        <td class="ability-input">
                            <input class="input-box-small ability"
                                   id="${ability}"
                                   readonly="true"/>
                            <a class="modLabel" id="${ability}Mod" value=""></a>
                            <c:if test="${create}">
                                <input type="button" id="${ability}-minus" class="ability-change" value="-" ${minusHide}>
                                <div class="placeholder ${placeholderShow}" id="${ability}-placeholder"></div>
                                <input type="button" id="${ability}-plus" class="ability-change" value="+">
                            </c:if>
                        </td>

                    </tr>
                </c:forEach>
            </table>
            <table class="side-by-side ability-row">
                <tr>
                    <td>Copper:</td><td> <form:input path="coinPurse['copper']" cssClass="input-box-small" id="money-copper" /></td>
                </tr>
                <tr>
                    <td>Silver:</td><td> <form:input path="coinPurse['silver']" cssClass="input-box-small" id="money-silver" /></td>
                </tr>
                <tr>
                    <td>Electrum:</td><td> <form:input path="coinPurse['electrum']" cssClass="input-box-small" id="money-electrum" /></td>
                </tr>
                <tr>
                    <td>Gold:</td><td> <form:input path="coinPurse['gold']" cssClass="input-box-small" id="money-gold" /></td>
                </tr>
                <tr>
                    <td>Platinum:</td><td> <form:input path="coinPurse['platinum']" cssClass="input-box-small" id="money-platinum" /></td>
                </tr>
            </table>
            <table class="side-by-side ability-row">
                <tr>
                    <td>Main Hand: </td>
                    <td><form:select id="main-select" path="equippedMainHand">
                        <form:option value="0" label="Select one"/>
                        <c:forEach items="${inventoryWeapons}" var="weapon">
                            <form:option class="main-hand-option" value="${weapon.id}" label="${weapon.name}"/>
                        </c:forEach>
                    </form:select></td>
                </tr>
                <tr>
                    <td>Off Hand: </td>
                    <td><form:select id="off-select" path="equippedOffHand">
                        <form:option value="0" label="Select one"/>
                        <c:forEach items="${inventoryOffHandItems}" var="item">
                            <form:option class="off-hand-option" value="${item.id}" label="${item.name}"/>
                        </c:forEach>
                    </form:select></td>
                </tr>
                <tr>
                    <td>Armor: </td>
                    <td><form:select id="armor-select" path="equippedArmor">
                        <form:option value="0" label="Select one"/>
                        <c:forEach items="${inventoryArmor}" var="armor">
                            <form:option class="armor-option" value="${armor.id}" label="${armor.name}"/>
                        </c:forEach>
                    </form:select></td>
                </tr>
            </table>
        </div>
        <div class="clear"/>
        <h3><spring:message code="character.inventory"/></h3>
        <span id="encumbered-label"><spring:message code="character.encumbered"/></span>
        <div class="table_container">
            <table class="side-by-side" id="weapon-inventory-table">
                <tr><th>Weapons</th></tr>
                <c:forEach items="${inventoryWeapons}" var="weapon">
                    <tr class="inventory-item">
                        <td><span id="weapon_${weapon.id}">${weapon.name}</span></td>
                    </tr>
                </c:forEach>
            </table>
            <table class="side-by-side" id="armor-inventory-table">
                <tr><th>Armor</th></tr>
                <c:forEach items="${inventoryArmor}" var="armor">
                    <tr class="inventory-item" >
                        <td><span id="armor_${armor.id}">${armor.name}</span></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="clear"/>
        <br/>
        <a href="#" id="store-link">Store</a> <a href="#" id="clear-inventory" class="link-small">Clear</a>
        <br/>
        <h3><spring:message code="character.proficiencies"/></h3>
        <span class="skill-select-label" id="skill-select-label"></span>
        <div class="table_container">
            <table class="side-by-side proficiencies" id="skillProfs">
                <tr><th>Skills</th></tr>
                <c:forEach items="${skillProficiencies}" var="skill">
                    <tr><td>${skill.name}</td></tr>
                </c:forEach>
            </table>
            <table class="side-by-side proficiencies" id="toolProfs">
                <tr><th>Tools</th></tr>
                <c:forEach items="${toolProficiencies}" var="tool">
                    <tr><td>${tool.name}</td></tr>
                </c:forEach>
            </table>
            <table class="side-by-side proficiencies" id="weaponProfs">
                <tr><th>Weapons</th></tr>
                <c:forEach items="${weaponProficiencies}" var="weapon">
                    <tr><td>${weapon.name}</td></tr>
                </c:forEach>
            </table>
            <table class="side-by-side proficiencies" id="armorProfs">
                <tr><th>Armor</th></tr>
                <c:forEach items="${armorProficiencies}" var="armor">
                    <tr><td>${armor.name}</td></tr>
                </c:forEach>
            </table>
            <table class="side-by-side proficiencies" id="saveProfs">
                <tr><th>Saving Throws</th></tr>
                <c:forEach items="${savingThrowProficiencies}" var="save">
                    <tr><td>${save.name}</td></tr>
                </c:forEach>
            </table>
        </div>
        <div class="clear"/>
        <br/>
        <div class="table_container">
            <h3><spring:message code="character.languages"/></h3>
            <table class="side-by-side" id="languages">
                <c:forEach items="${characterModel.race.languages}" var="language">
                    <tr><td>${language.name}</td></tr>
                </c:forEach>
            </table>
            <table class="side-by-side" id="traits-table">
            </table>
        </div>
        <div class="clear"/>
        <br/>

        <input type="submit" value="Save"/>

        </form:form>

        <modals:language-modal></modals:language-modal>
        <modals:store-modal></modals:store-modal>
</body>
</html>
