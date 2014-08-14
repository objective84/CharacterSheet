<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>

<div class="modal" id="races-modal">

    <table>
        <c:forEach items="${races}" var="race">
           <tr>
               <td>
                   <input type="radio" name="races-option" class='language-option' id="race_${race.id}" value="${race.name}"> ${race.name}
               </td>
           </tr>
        </c:forEach>
        <tr>
            <td>
                <input type="button" id="language-submit" value="Select">
            </td>
        </tr>
    </table>


</div>