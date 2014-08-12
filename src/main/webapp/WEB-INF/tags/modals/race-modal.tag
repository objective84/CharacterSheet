<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>

<div class="modal" id="race-modal">
    <table>
        <c:forEach items="${races}" var="race">
            <tr>
                <td colspan="4">
                    <input type="radio" name="race-radio" class='' id="race_${race.id}" value="${race.id}">
                    <span>${race.raceName}</span>
                </td>
            </tr>
            <tr>
                <td colspan="4"><span>${race.description}</span></td>
            </tr>
            <tr>
                <td><span>${race.size}</span></td>
                <td><span>${race.speed}</span></td>
            </tr>
        </c:forEach>
    </table>
</div>


