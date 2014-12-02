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
<link href="/CharacterSheet/resources/css/global.css" rel="stylesheet">

<html>
<head>
    <c:choose>
        <c:when test="${character.id != undefined}">
            <c:set var="charId" value="${character.id}"/>
        </c:when>
        <c:otherwise>
            <c:set var="charId" value="0"/>
        </c:otherwise>
    </c:choose>

    <c:if test="${create}">
        <c:set var="placeholderShow" value='show'/>
        <c:set var="minusHide" value="style='display: none;'"/>
    </c:if>
    <title>${character.characterDescription.name}</title>
    <template:javascript/>
</head>
<body id="body">
    <div class="container">
        <div id="character-sheet">
            <form:form id="characterForm" commandName="character">
                <input type="hidden" id="pathContext" value="${pageContext.request.contextPath}">
                <div class="side-by-side"  id="page-one-container">
                    <div id="page-one">
                        <input id="characterId" name="id" type="hidden" value="${character.id}"/>
                        <table class="table table-condensed">
                            <tr>
                                <td>
                                    <spring:message code="character.name"/>
                                    <input id="name" />
                                </td>
                                <td>
                                    <spring:message code="character.race"/>
                                    <c:choose>
                                        <c:when test="${create}">
                                            <select id="race" disabled="true">
                                                <option value="0" >Select a race</option>
                                                <c:forEach items="${races}" var="race">
                                                    <option value="${race.id}">${race.raceName}</option>
                                                </c:forEach>
                                            </select>
                                        </c:when>
                                        <c:otherwise>
                                            ${characterModel.race.raceName}
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <spring:message code="character.subrace"/>
                                    <c:choose>
                                        <c:when test="${create}">
                                            <select id="subrace" class="subraces" disabled="true">
                                                <option value="0">Select a sub-race</option>
                                            </select>
                                        </c:when>
                                        <c:otherwise>
                                            ${characterModel.subrace.name}
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <spring:message code="character.class"/>
                                    <c:choose>
                                        <c:when test="${create}">
                                            <form:select id="class-select" path="clazz" disabled="true">
                                                <form:option value="0" label="Select a class"/>
                                                <c:forEach items="${classes}" var="clazz">
                                                    <form:option value="${clazz.id}" label="${clazz.name}"/>
                                                </c:forEach>
                                            </form:select>
                                        </c:when>
                                        <c:otherwise>
                                            ${characterModel.clazz.name}
                                        </c:otherwise>
                                    </c:choose>
                                    <a href="javascript:void(0);" class="link-small" id="choose-subclass">Select a Sub-Class</a>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr >
                                <td>
                                    <spring:message code="character.level"/>
                                    <input class="input-box-small" id="level" readonly="true"/>
                                </td>
                                <td>
                                    <spring:message code="character.ac"/>
                                    <input class="input-box-small" id="armor-class" readonly="true"/>
                                </td>
                                <td>
                                    <spring:message code="character.currentHealth"/>
                                    <form:input cssClass="input-box-small" id="currentHealth" path="currentHealth" />
                                </td>
                                <td>
                                    <spring:message code="character.maxHeath"/>
                                    <form:input cssClass="input-box-small" id="maxHealth" path="maxHealth" value="${character.maxHealth}" readonly="true"/>
                                </td>
                                <td>
                                    <spring:message code="character.speed"/>
                                    <form:input cssClass="input-box-small" id="speed" path="speed" readonly="true"/>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>Hit Dice:</td>
                                <c:if test="${character.hitDiceD6 > 0}"><td>d6: <input id="hit-dice-d6" class="input-box-small" readonly="true" value = ${character.hitDiceD6}></td></c:if>
                                <c:if test="${character.hitDiceD8 > 0}"><td>d8: <input id="hit-dice-d8" class="input-box-small" readonly="true" value = ${character.hitDiceD8}></td></c:if>
                                <c:if test="${character.hitDiceD10 > 0}"><td>d10: <input id="hit-dice-d10" class="input-box-small" readonly="true" value = ${character.hitDiceD10}></td></c:if>
                                <c:if test="${character.hitDiceD12 > 0}"><td>d12: <input id="hit-dice-d12" class="input-box-small" readonly="true" value = ${character.hitDiceD12}></td></c:if>
                            </tr>
                        </table>

                        <table id="abilities-row">
                            <tr>
                                <th>
                                    <h3><spring:message code="character.ability" /><a href="javascript:void(0);" id="ability-score-reset" class="link-small">Reset</a></h3>
                                    <span id="ability-point-label"></span>
                                    <input type="button" id="ability-confirm" class="hide" value="Confirm">
                                    <input type="button" id="buy-feat-btn" class="hide" value="Buy Feat">
                                </th>
                                    <%--<th><h3><spring:message code="character.currency" /></h3></th>--%>
                                    <%--<th><h3><spring:message code="character.equipped" /></h3></th>--%>
                            </tr>
                            <tr>
                                <td>
                                    <table id="abilities">
                                        <tr>
                                            <c:forEach items="${abilityTypes}" var="ability" varStatus="i">
                                            <c:if test="${i.index eq '3'}">
                                                </tr>
                                                <tr>
                                                </tr>
                                                <tr>
                                                </tr>
                                                <tr>
                                            </c:if>
                                            <td>
                                                    ${ability}
                                                <input class="input-box-small ability"
                                                       id="${ability}"
                                                       readonly="true"/>
                                                <a class="modLabel" id="${ability}Mod" value=""></a>
                                                <c:if test="${create}">
                                                    <input type="button" id="${ability}-minus" class="ability-change hide" value="-" ${minusHide}>
                                                    <div class="placeholder ${placeholderShow} hide" id="${ability}-placeholder"></div>
                                                    <input type="button" id="${ability}-plus" class="ability-change  hide" value="+">
                                                </c:if>
                                            </td>
                                            </c:forEach>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                                <%--<tr>--%>
                                <%--<td>--%>
                                <%--<table>--%>
                                <%--<tr>--%>
                                <%--<td>Copper:</td><td> <input class="input-box-small" id="money-copper" value="${character.coinPurse.CP}"/></td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                <%--<td>Silver:</td><td> <input class="input-box-small" id="money-silver" value="${character.coinPurse.SP}"/></td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                <%--<td>Electrum:</td><td> <input class="input-box-small" id="money-electrum" value="${character.coinPurse.EP}"/></td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                <%--<td>Gold:</td><td> <input class="input-box-small" id="money-gold" value="${character.coinPurse.GP}"/></td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                <%--<td>Platinum:</td><td> <input class="input-box-small" id="money-platinum" value="${character.coinPurse.PP}"/></td>--%>
                                <%--</tr>--%>
                                <%--</table>--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                <%--<table class="side-by-side ability-row">--%>
                                <%--<tr>--%>
                                <%--<td>Main Hand: </td>--%>
                                <%--<td><form:select id="main-select" path="equippedMainHand">--%>
                                <%--<form:option value="0" label="Select one"/>--%>
                                <%--<c:forEach items="${inventoryWeapons}" var="weapon">--%>
                                <%--<form:option class="main-hand-option" value="${weapon.id}" label="${weapon.name}"/>--%>
                                <%--</c:forEach>--%>
                                <%--</form:select></td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                <%--<td>Off Hand: </td>--%>
                                <%--<td><form:select id="off-select" path="equippedOffHand">--%>
                                <%--<form:option value="0" label="Select one"/>--%>
                                <%--<c:forEach items="${inventoryOffHandItems}" var="item">--%>
                                <%--<form:option class="off-hand-option" value="${item.id}" label="${item.name}"/>--%>
                                <%--</c:forEach>--%>
                                <%--</form:select></td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                <%--<td>Armor: </td>--%>
                                <%--<td><form:select id="armor-select" path="equippedArmor">--%>
                                <%--<form:option value="0" label="Select one"/>--%>
                                <%--<c:forEach items="${inventoryArmor}" var="armor">--%>
                                <%--<form:option class="armor-option" value="${armor.id}" label="${armor.name}"/>--%>
                                <%--</c:forEach>--%>
                                <%--</form:select></td>--%>
                                <%--</tr>--%>
                                <%--</table>--%>
                                <%--</td>--%>
                                <%--</tr>--%>
                        </table>

                        <table>
                            <tr>
                                <th>
                                    <h3><spring:message code="character.inventory"/></h3>
                                    <span class="hide" id="encumbered-label"><spring:message code="character.encumbered"/></span>
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr>
                                            <th>Weapons</th>
                                            <th>Armor</th>
                                        </tr>

                                        <tr>
                                            <div class="table-container">
                                                <table class="side-by-side" id="weapon-inventory-table">
                                                    <c:forEach items="${inventoryWeapons}" var="weapon">
                                                        <tr class="inventory-item">
                                                            <td><span id="weapon_${weapon.id}">${weapon.name}</span></td>
                                                        </tr>
                                                    </c:forEach>
                                                </table>
                                                <table id="armor-inventory-table">
                                                    <tr></tr>
                                                    <c:forEach items="${inventoryArmor}" var="armor">
                                                        <tr class="inventory-item" >
                                                            <td><span id="armor_${armor.id}">${armor.name}</span></td>
                                                        </tr>
                                                    </c:forEach>
                                                </table>
                                            </div>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <div class="clear"></div>

                        <a href="javascript:void(0);" id="store-link">Store</a> <a href="javascript:void(0);" id="clear-inventory" class="link-small">Clear</a>

                        <table>
                            <tr><th colspan="2"><h3><spring:message code="character.proficiencies"/></h3></th></tr>
                            <tr>
                                <td colspan="2"><span>Proficiency Bonus: </span>
                                    <input class="input-box-small" id="proficiency-bonus" readonly="true" value="${character.characterAdvancement.proficiencyBonus}"/>
                                    <span class="skill-select-label" id="skill-select-label"></span>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <table id="skillProfs">
                                        <tr><th>Skills</th></tr>
                                        <c:forEach items="${skillProficiencies}" var="skill">
                                            <tr class="proficiency-row"><td>${skill.name}</td></tr>
                                        </c:forEach>
                                    </table>
                                </td>
                                <td>
                                    <table class="side-by-side proficiencies" id="toolProfs">
                                        <tr><th>Tools</th></tr>
                                        <c:forEach items="${toolProficiencies}" var="tool">
                                            <tr class="proficiency-row"><td>${tool.name}</td></tr>
                                        </c:forEach>
                                    </table>
                                </td>
                                <td>
                                    <table class="side-by-side proficiencies" id="weaponProfs">
                                        <tr><th>Weapons</th></tr>
                                        <c:forEach items="${weaponProficiencies}" var="weapon">
                                            <tr class="proficiency-row"><td>${weapon.name}</td></tr>
                                        </c:forEach>
                                    </table>
                                </td>
                                <td>
                                    <table class="side-by-side proficiencies" id="armorProfs">
                                        <tr><th>Armor</th></tr>
                                        <c:forEach items="${armorProficiencies}" var="armor">
                                            <tr class="proficiency-row"><td>${armor.name}</td></tr>
                                        </c:forEach>
                                    </table>
                                </td>
                                <td>
                                    <table class="side-by-side proficiencies" id="saveProfs">
                                        <tr class="proficiency-row"><th>Saving Throws</th></tr>
                                        <c:forEach items="${savingThrowProficiencies}" var="save">
                                            <tr><td>${save.name}</td></tr>
                                        </c:forEach>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <%--Page Two--%>
                <div class="side-by-side"  id="page-two-container">
                    <div id="page-two">
                        <h3><spring:message code="character.languages"/></h3>
                        <table id="languages">
                            <c:forEach items="${character.languages}" var="language">
                                <tr class="language-row"><td>${language.name}</td></tr>
                            </c:forEach>
                        </table>


                        <h3>Feats</h3>
                        <div class="feats">
                            <table>
                                <c:forEach items="${character.feats}" var="feat">
                                    <tr class="feat-row"><td><a href="javascript:void(0);" id="feat-${feat.id} title=${feat.description}">${feat.name}</a></td></tr>
                                </c:forEach>
                            </table>
                        </div>

                        <h3>Traits</h3>
                        <div class="traits">
                            <table>
                                <c:forEach items="${character.traits}" var="trait">
                                    <tr><td><a href="javascript:void(0);" id="trait-${trait.id}" title="${trait.description}">${trait.name}</a></td></tr>
                                </c:forEach>
                            </table>
                        </div>

                        <h3>Spells <a href="javascript:void(0);" class="link-small" id="all-spells">View All</a></h3>
                        <div id="spell-slots"></div><br/>

                        <h3>Prepared Spells</h3>
                        <table id="spells-prepared">
                        </table>


                        <h4>Spells Known</h4>
                        <span id="new-spells-notifier" class="link-small hide">**You can learn ${character.numSpellsAllowed} more spells!**</span>
                        <div id="spells-known" class="table-container">
                            <table id="level-0-spells" class="side-by-side spells-known-table">
                                <tr><th>Cantrips</th></tr>
                            </table>
                            <table id="level-1-spells" class="side-by-side spells-known-table">
                                <tr><th>Level One</th></tr>
                            </table>
                            <table id="level-2-spells" class="side-by-side spells-known-table">
                                <tr><th>Level Two</th></tr>
                            </table>
                            <table id="level-3-spells" class="side-by-side spells-known-table">
                                <tr><th>Level Three</th></tr>
                            </table>
                            <table id="level-4-spells" class="side-by-side spells-known-table">
                                <tr><th>Level Four</th></tr>
                            </table>
                            <table id="level-5-spells" class="side-by-side spells-known-table">
                                <tr><th>Level Five</th></tr>
                            </table>
                            <table id="level-6-spells" class="side-by-side spells-known-table">
                                <tr><th>Level Six</th></tr>
                            </table>
                            <table id="level-7-spells" class="side-by-side spells-known-table">
                                <tr><th>Level Seven</th></tr>
                            </table>
                            <table id="level-8-spells" class="side-by-side spells-known-table">
                                <tr><th>Level Eight</th></tr>
                            </table>
                            <table id="level-9-spells" class="side-by-side spells-known-table">
                                <tr><th>Level Nine</th></tr>
                            </table>
                        </div>
                        <div class="clear"></div>
                        <a href="javascript:void(0);" id="add-spells">Learn Spells</a>
                    </div>
                </div>
                <modals:language-modal />
                <modals:store-modal/>
                <modals:spell-modal/>
                <modals:description-modal/>
                <modals:spell-book-modal/>
                <modals:level-options-modal/>
                <modals:empty-modal/>
                <modals:hit-dice-modal/>
                <modals:feat-selection-modal/>
            </form:form>
        </div>

    </div>

    <%--<table class="float-right">--%>
    <%--<tr><td><input type="button" class="float-right" id="level-character" value="Level Up"></td></tr>--%>
    <%--<tr><td><input type="button" class="float-right" id="long-rest-btn" value="Long Rest"></td></tr>--%>
    <%--<tr><td><input type="button" class="float-right" id="short-rest-btn" value="Short Rest"></td></tr>--%>
    <%--</table>--%>
</body>
</html>
