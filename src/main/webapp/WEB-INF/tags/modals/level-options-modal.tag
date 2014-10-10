<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>

<div id="level-options-modal">
    <h3>Choose a class to level in:</h3>
    <table>
        <tr>
            <td><div class="class-image"></div></td>
            <td><div class="class-image"></div></td>
            <td><div class="class-image"></div></td>
            <td><div class="class-image"></div></td>
        </tr>
        <tr>
            <td><input type="button" class="class-btn" id="class-1-btn" value="${classes[0].name}" data-id="1"></td>
            <td><input type="button" class="class-btn" id="class-2-btn" value="${classes[1].name}" data-id="2"></td>
            <td><input type="button" class="class-btn" id="class-3-btn" value="${classes[2].name}" data-id="3"></td>
            <td><input type="button" class="class-btn" id="class-4-btn" value="${classes[3].name}" data-id="4"></td>
        </tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr>
            <td><div class="class-image"></div></td>
            <td><div class="class-image"></div></td>
            <td><div class="class-image"></div></td>
            <td><div class="class-image"></div></td>
        </tr>
        <tr>
            <td><input type="button" class="class-btn" id="class-5-btn" value="${classes[4].name}" data-id="5"></td>
            <td><input type="button" class="class-btn" id="class-6-btn" value="${classes[5].name}" data-id="6"></td>
            <td><input type="button" class="class-btn" id="class-7-btn" value="${classes[6].name}" data-id="7"></td>
            <td><input type="button" class="class-btn" id="class-8-btn" value="${classes[7].name}" data-id="8"></td>
        </tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr>
            <td><div class="class-image"></div></td>
            <td><div class="class-image"></div></td>
            <td><div class="class-image"></div></td>
            <td><div class="class-image"></div></td>
        </tr>
        <tr>
            <td><input type="button" class="class-btn" id="class-9-btn" value="${classes[8].name}" data-id="9"></td>
            <td><input type="button" class="class-btn" id="class-10-btn" value="${classes[9].name}" data-id="10"></td>
            <td><input type="button" class="class-btn" id="class-11-btn" value="${classes[10].name}" data-id="11"></td>
            <td><input type="button" class="class-btn" id="class-12-btn" value="${classes[11].name}" data-id="12"></td>
        </tr>

    </table>
</div>
