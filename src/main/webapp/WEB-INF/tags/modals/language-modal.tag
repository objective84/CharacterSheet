<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>

<div class="modal" id="language-modal">

    <table>
        <c:forEach items="${languages}" var="language">
           <tr>
               <td>
                   <input type="radio" name="language-option" class='language-option' id="language_${language.id}" value="${language.name}"
                          data-id="${language.id}"> ${language.name}
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


