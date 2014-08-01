<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>
<%@ taglib prefix="js" tagdir="/WEB-INF/tags/template"%>
<%--<link href="/webapp/resources/css/global.css" rel="stylesheet">--%>
<script src="<c:url value="/resources/js/lib/require.js"/>"></script>
<script src="<c:url value="/resources/js/require-config.js"/>"></script>

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
</head>
<body>
    <div id="entry">
        <form:form id="form" commandName="race">
            <input type="hidden" name="id" id="id" value="${race.id}">
            <div id="table_container">
                <table>
                    <tr>
                        <th>Name</th>
                        <td><form:input path="raceName"></form:input></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><form:input path="description"></form:input></td>
                    </tr>
                    <tr>
                        <th>Size</th>
                        <td><form:input path="size"></form:input></td>
                    </tr>
                    <tr>
                        <th>Speed</th>
                        <td><form:input path="speed" cssClass="input-box-small"></form:input></td>
                    </tr>
                    <tr>
                        <th>Languages</th>
                        <td>
                            <table>
                                    <%--<form:checkboxes path="languages" items="${languages}"/>--%>
                                <c:forEach items="${languages}" var="language">
                                    <c:choose>
                                        <c:when test="${language.id == languagesMap[language.id]}">
                                            <c:set var="checked" value="checked='true'"/>
                                        </c:when>
                                        <c:otherwise>
                                            <c:set var="checked" value=""/>
                                        </c:otherwise>
                                    </c:choose>
                                    <tr>
                                        <td><input type='checkbox' name="languages" value="${language.id}" ${checked}/>${language.name}</td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </td>
                    </tr>
                        <%--<tr>--%>
                        <%--<th>Traits</th>--%>
                        <%--<c:forEach items="${taits}" var="trait">--%>
                        <%--<td><form:checkbox path="racialTraits" value="${trait}"/></td>--%>
                        <%--</c:forEach>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<th>Subraces</th>--%>
                        <%--<c:forEach items="${subRaces}" var="subRace">--%>
                        <%--<td><form:checkbox path="availableSubraces" value="${subRace}"/></td>--%>
                        <%--</c:forEach>--%>
                        <%--</tr>--%>
                    <tr>
                        <td colspan="3">
                            <input type="submit" name='save' value="Save"/>
                            <a href="/CharacterSheet/admin/db-entry.html" style="margin:10px; font-size: 12px;">Cancel</a>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr><td>Races:</td></tr>
                    <c:forEach items="${races}" var="race">
                        <tr>
                            <td><a class="entry-link" href="#" id="${race.id}">${race.raceName}</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </form:form>
    </div>
</body>
</html>
