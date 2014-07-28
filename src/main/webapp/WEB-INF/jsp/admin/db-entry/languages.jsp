<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>
<link href="_ui/css/global.css" rel="stylesheet">
<%--
  Created by IntelliJ IDEA.
  User: PVarnerHowland
  Date: 7/24/2014
  Time: 11:53 AM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title></title>
</head>
<body>
    <div class="languages">
        <div>
            <form:form commandName="language">
            <table>
                <tr>
                    <th style="float: left">Name</th>
                    <td><form:input path="name"></form:input></td>
                </tr>
                <tr>
                    <th>Description</th>
                    <td><form:input path="description"></form:input></td>
                </tr>
            </table>
            <input type="submit" value="Save"/>
        </div>
            <table>
                <c:forEach items="${languages}" var="language">
                    <tr>
                        <td><a href="/languages.html/${language.id}"/>${language.name}</td>
                    </tr>
                </c:forEach>
            </table>
        </form:form>

    </div>
</body>
</html>
