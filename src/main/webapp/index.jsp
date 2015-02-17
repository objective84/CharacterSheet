<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>
<link href="/CharacterSheet/resources/css/global.css" rel="stylesheet">
<link href="/CharacterSheet/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/CharacterSheet/resources/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">

<html>
<body>
    <spring:url value="/characterlist.html" var="characterlist"/>
    <spring:url value="/spells.html" var="spells"/>
    <spring:url value="/light-puzzle.html" var="puzzle"/>
    <div class="container">
        <div class="starter-template">
            <table id="index-links">
                <tr>
                    <td><div class="image-wide-large"><img src="resources/images/party-image.jpg"></div></td>
                    <td><div class="image-wide-large"><img src="resources/images/spellbook.jpg"></div></td>
                </tr>
                <tr>
                    <td><input type="button" onclick="document.location.href='${characterlist}'" value="Character List"></td>
                    <td><input type="button" onclick="document.location.href='${spells}'" value="Spell Book"></td>
                </tr>
            </table>

            <%--<br/>--%>
            <%--<a href="${puzzle}">Light Puzzle</a>--%>
        </div>

    </div><!-- /.container -->
</body>
</html>
