<%--
  Created by IntelliJ IDEA.
  User: PVarnerHowland
  Date: 8/11/2014
  Time: 11:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>

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
        <form:form id="form" commandName="trait">
            <input type="hidden" name="id" id="id" value="${trait.id}">
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
                        <th>Modifier</th>
                        <td>
                            <form:select path="modType" >
                                <form:option value="0" label="Select a modifier type" />
                                <c:forEach items="${modTypes}" var="type">
                                    <form:option value="${type}" label="${type}"/>
                                </c:forEach>
                            </form:select>
                        </td>
                        <td>Amount: <form:input path="traitModifier" cssClass="input-box-small"></form:input></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <input type="submit" name='save' value="Save"/>
                            <a href="/CharacterSheet/admin/db-entry/traits.html" style="margin:10px; font-size: 12px;">Clear</a>
                            <a href="/CharacterSheet/admin/db-entry.html" style="margin:10px; font-size: 12px;">Back</a>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr><td>Traits:</td></tr>
                    <c:forEach items="${allTraits}" var="trait">
                        <tr>
                            <td><a class="entry-link" href="#" id="${trait.id}">${trait.name}</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </form:form>
    </div>
</body>
</html>
