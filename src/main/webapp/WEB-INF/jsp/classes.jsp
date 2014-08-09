<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>

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
        <form:form id="form" commandName="clazz">
            <input type="hidden" name="id" id="id" value="${clazz.id}">
            <div id="table_container">
                <table>
                    <tr>
                        <th>Name:</th>
                        <td><form:input path="name"></form:input></td>
                    </tr>
                    <tr>
                        <th>Hit Die:</th>
                        <td>
                            <form:select path="hitDie">
                                <form:option value="" label="Select a Hit Die"/>
                                <c:forEach items="${hitDice}" var="type">
                                    <form:option name="hitDie" value="${type.id}" label="${type.name}"/>
                                </c:forEach>
                            </form:select>
                        </td>
                    </tr>
                    <tr>
                        <th>Proficiencies</th>
                        <td>
                            <table>
                                <c:forEach items="${proficiencies}" var="proficiency">
                                    <c:choose>
                                        <c:when test="${proficiency.id == proficiencyMap[proficiency.id]}">
                                            <c:set var="checked" value="checked='true'"/>
                                        </c:when>
                                        <c:otherwise>
                                            <c:set var="checked" value=""/>
                                        </c:otherwise>
                                    </c:choose>
                                    <tr>
                                        <td><input type='checkbox' name="proficiencies" value="${proficiency.id}" ${checked}/>${proficiency.name}</td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <input type="submit" name='save' value="Save"/>
                            <a href="/CharacterSheet/admin/db-entry/classes.html" style="margin:10px; font-size: 12px;">Clear</a>
                            <a href="/CharacterSheet/admin/db-entry.html" style="margin:10px; font-size: 12px;">Back</a>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr><td>Classes:</td></tr>
                    <c:forEach items="${allClasses}" var="clazz">
                        <tr>
                            <td><a class="entry-link" href="#" id="${clazz.id}">${clazz.name}</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </form:form>
    </div>
</body>
</html>
