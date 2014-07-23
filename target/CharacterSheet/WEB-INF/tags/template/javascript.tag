<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    window.DEBUG_MODE = true;
</script>

<%--Libs--%>
<script src="<c:url value="/_ui/js/lib/jquery-1.8.3.js"/>"></script>
<script src="<c:url value="/_ui/js/lib/require.js"/>"></script>
<%--<script src="<c:url value="/_ui/js/lib/backbone.min.js"/>"></script>--%>
<%--<script src="<c:url value="/_ui/js/lib/marionette.min.js"/>"></script>--%>
<script src="<c:url value="/_ui/js/lib/underscore.js"/>"></script>
<%--Custom files--%>
<script src="<c:url value="/_ui/js/application.js"/>"></script>
<script src="<c:url value="/_ui/js/View/CharacterView.js"/>"></script>
<script src="<c:url value="/_ui/js/require-config.js"/>"></script>
