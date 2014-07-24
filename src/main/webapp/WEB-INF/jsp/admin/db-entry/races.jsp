<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="_ui/css/global.css" rel="stylesheet">

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

</head>
<body>
    <table>
        <tr>
            <td>
                <form:form commandName="race">
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
                                        <tr>
                                            <td><form:checkbox path="languages" value="${language.id}"/>${language.name}</td>
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
                            <%--<c:forEach items="${subraces}" var="subrace">--%>
                                <%--<td><form:checkbox path="availableSubraces" value="${subrace}"/></td>--%>
                            <%--</c:forEach>--%>
                        <%--</tr>--%>
                    </table>
                    <input type="submit" value="Save"/>
                </form:form>

                <table>
                    <c:forEach items="${races}" var="race">
                        <tr>
                            <td><a href="/race.html/${race.id}"/>${race.raceName}</td>
                        </tr>
                    </c:forEach>
                </table>
            </td>
        </tr>
    </table>


</body>
</html>
