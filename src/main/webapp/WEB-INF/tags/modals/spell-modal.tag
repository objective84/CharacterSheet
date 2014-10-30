<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>

<div class="modal" id="spell-modal">
    <input type="hidden" id="spell-id" value>
    <div id="spell-text"></div>
    <br/>
    <input type="button" id="spell-cast-btn" value="Cast"/>
    <input type="button" id="prepare-spell-btn" value="Prepare"/>
</div>
