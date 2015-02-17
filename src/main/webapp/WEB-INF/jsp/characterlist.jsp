<%--
  Created by IntelliJ IDEA.
  User: PVarnerHowland
  Date: 7/22/2014
  Time: 3:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>
<link href="/CharacterSheet/resources/css/global.css" rel="stylesheet">

<html>
<head>
    <title>Characters</title>
    <template:javascript/>
</head>
<body>
    <div class="container">
        <div id="character-list">
            <input type="hidden" id="id" name="id" value="0"/>
            <input type="hidden" id="name" name="name" value=""/>
            <form:form commandName="character" id="characterForm">
                <table class="character-list">
                    <thead>
                        <tr>
                            <th><h3>Name</h3></th>
                            <th><h3>Race</h3></th>
                            <th><h3>Class</h3></th>
                            <th><h3>Actions</h3></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${characters}" var="character">
                            <tr id="row-${character.id}">
                                <td>${character.characterDescription.name}</td>
                                <td>${character.race.raceName}</td>
                                <td> ${character.clazz.name}</td>
                                <td>
                                    <a href="character-sheet/${character.id}" class='characterLink delete-char link-small' /> Edit
                                    <a href="javascript:void(0);" class="delete-char link-small" id="${character.id}-delete" class="link-small">Delete</a>
                                </td>
                                <td></td>
                                </td>
                            </tr>
                        </c:forEach>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input id="new-character-btn" type="button" value="New"></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br/>
                <div class="clear"></div>
            </form:form>
        </div>
    </div>
</body>
</html>
