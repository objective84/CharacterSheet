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
    <template:javascript/>
</head>
<body>
    <div id="entry">
        <form:form id="form" commandName="subrace">
            <input type="hidden" name="id" id="id" value="${subrace.id}">
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
                        <th>Parent Race</th>
                        <td><form:select path="parentRace" >
                            <form:option value="0" label="Select a race" />
                            <c:forEach items="${races}" var="race">
                                <form:option value="${race.id}" label="${race.raceName}"/>
                            </c:forEach>
                        </form:select> </td>
                    </tr>
                        <%--<tr>--%>
                        <%--<th>Traits</th>--%>
                        <%--<c:forEach items="${taits}" var="trait">--%>
                        <%--<td><form:checkbox path="racialTraits" value="${trait}"/></td>--%>
                        <%--</c:forEach>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                    <tr>
                        <td colspan="3">
                            <input type="submit" name='save' value="Save"/>
                            <a href="/CharacterSheet/admin/db-entry/subraces.html" style="margin:10px; font-size: 12px;">Clear</a>
                            <a href="/CharacterSheet/admin/db-entry.html" style="margin:10px; font-size: 12px;">Back</a>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr><td>Subraces:</td></tr>
                    <c:forEach items="${subraces}" var="subrace">
                        <tr>
                            <td><a class="entry-link" href="#" id="${subrace.id}">${subrace.name}</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </form:form>
    </div>
</body>
</html>