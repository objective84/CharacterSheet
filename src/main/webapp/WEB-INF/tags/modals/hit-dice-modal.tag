<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>

<div class="modal" id="hit-dice-modal">
    <table>
        <tr><th colspan="4">Would you like to use hit dice?</th></tr>
        <tr>
            <td>
                <img src="/CharacterSheet/resources/images/d6.png" id="dice-d6" class="dice-image">
            </td>
            <td>
                <img src="/CharacterSheet/resources/images/d8.png" id="dice-d8" class="dice-image">
            </td>
            <td>
                <img src="/CharacterSheet/resources/images/d10.png" id="dice-d10" class="dice-image">
            </td>
            <td>
                <img src="/CharacterSheet/resources/images/d12.png" id="dice-d12" class="dice-image">
            </td>
        </tr>
        <tr>
            <td>
                <input id="d6-spinner" name="d6-value" class="hit-dice-spinner" value="0">
            </td>
            <td>
                <input id="d8-spinner" name="d8-value" class="hit-dice-spinner" value="0">
            </td>
            <td>
                <input id="d10-spinner" name="d10-value" class="hit-dice-spinner" value="0">
            </td>
            <td>
                <input id="d12-spinner" name="d12-value" class="hit-dice-spinner" value="0">
            </td>
        </tr>
    </table>
    <input type="button" id="hit-dice-submit-btn" value="Rest" class="float-right">
</div>
