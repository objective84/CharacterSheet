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
<html>
<head>
    <title>${character.name}</title>
</head>
<body>
    <form:form commandName="character">
        <table>
            <tr>
                <td><spring:message code="character.name"/></td>
                <td><form:input path="name" value="${character.name}"/></td>

                <td><spring:message code="character.race"/></td>
                <td><form:input path="race" value="${character.race}"/></td>

                <td><spring:message code="character.class"/></td>
                <td><form:input path="classType" value="${character.classType}"/></td>
            </tr>
            <tr>
                <td><spring:message code="character.ability" /></td>
            </tr>
                <tr>
                    <td><spring:message code="ability.str"/></td>
                    <td><form:input path="str" value="${character.str}"/></td>
                </tr>
                <tr>
                    <td><spring:message code="ability.dex"/></td>
                    <td><form:input path="dex" value="${character.dex}"/></td>
                </tr>
                <tr>
                    <td><spring:message code="ability.con"/></td>
                    <td><form:input path="con" value="${character.con}"/></td>
                </tr>
                <tr>
                    <td><spring:message code="ability.int"/></td>
                    <td><form:input path="intel" value="${character.intel}"/></td>
                </tr>
                <tr>
                    <td><spring:message code="ability.wis"/></td>
                    <td><form:input path="wis" value="${character.wis}"/></td>
                </tr>
                <tr>
                    <td><spring:message code="ability.cha"/></td>
                    <td><form:input path="cha" value="${character.cha}"/></td>
                </tr>
            <tr colspan="3">
                <td>
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form:form>

</body>
</html>
