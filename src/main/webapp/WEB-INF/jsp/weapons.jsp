<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>
<%@ taglib prefix="js" tagdir="/WEB-INF/tags/template"%>

<%--
  Created by IntelliJ IDEA.
  User: PVarnerHowland
  Date: 7/24/2014
  Time: 11:52 AM
  To change this template use File | Settings | File Templates.
--%>


<html>
<head>
    <title></title>
    <style type="text/css" media="screen">
        table {margin-right: 25px; float:left;width:200px;}
        #table_container{float:left;width:1000px;margin:0 auto;}
    </style>
    <template:javascript/>
</head>
<body>
    <div id="entry">
        <form:form id="form" commandName="weapon">
            <input type="hidden" name="id" id="id" value="${weapon.id}">
            <div id="table_container">
                <table>
                    <tr>
                        <th>Name</th>
                        <td><form:input path="name"></form:input></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><form:input path="description"></form:input></td>
                    </tr>
                    <tr>
                        <th>Type</th>
                        <td><form:select path="weaponGroup" items="${weaponGroups}" itemValue="id" itemLabel="name"/></td>
                    </tr>
                    <tr class="weapon-range">
                        <th>Normal Range: </th>
                        <td><form:input path="weaponRange" cssClass="input-box-small"></form:input> ft. </td>
                    </tr>
                    <tr class="weapon-range">
                        <th>Max Range: </th>
                        <td><form:input path="maxWeaponRange" cssClass="input-box-small"></form:input> ft. </td>
                    </tr>
                    <tr>
                        <th>Weight: </th>
                        <td><form:input path="itemWeight" cssClass="input-box-small"></form:input> lb. </td>
                    </tr>
                    <tr>
                        <th>Price: </th>
                        <td>
                            <form:input path="price" cssClass="input-box-small"></form:input>
                            <form:select path="priceDenomination" items="${coins}" itemValue="id" itemLabel="abbr"></form:select>
                        </td>
                    </tr>
                    <tr colspan="4">
                        <th>Damage Dice: </th>
                        <td>
                            <form:input path="numberOfDice" cssClass="input-box-small"></form:input>
                            <form:select path="damageDice" items="${damageDice}" itemValue="id" itemLabel="name"></form:select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <input type="submit" name='save' value="Save"/>
                            <a href="/CharacterSheet/admin/db-entry/weapons.html" style="margin:10px; font-size: 12px;">Clear</a>
                            <a href="/CharacterSheet/admin/db-entry/equipment.html" style="margin:10px; font-size: 12px;">Back</a>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr><td>Weapons:</td></tr>
                    <c:forEach items="${allWeapons}" var="weapon">
                        <tr>
                            <td><a class="entry-link" href="#" id="${weapon.id}">${weapon.name}</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </form:form>
    </div>
</body>
</html>
