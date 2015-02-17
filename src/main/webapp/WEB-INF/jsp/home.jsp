<%--
  Created by IntelliJ IDEA.
  User: pvarnerhowland
  Date: 11/25/2014
  Time: 1:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <table id="index-links">
        <tr>
            <td><div class="image-wide-large"><img src="resources/images/spellbook.jpg"></div></td>
            <td><div class="image-wide-large"><img src="resources/images/party-image.jpg"></div></td>
        </tr>
        <tr>
            <td><input type="button" onclick="document.location.href='${spells}'" value="Spell Book"></td>
            <td><input type="button" onclick="document.location.href='${characterlist}'" value="Character List"></td>
        </tr>
    </table>

    <%--<br/>--%>
    <%--<a href="${puzzle}">Light Puzzle</a>--%>
