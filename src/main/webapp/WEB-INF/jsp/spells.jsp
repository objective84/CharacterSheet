<%--
  Created by IntelliJ IDEA.
  User: PVarnerHowland
  Date: 9/17/2014
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>
<%@ taglib prefix="modals" tagdir="/WEB-INF/tags/modals" %>
<link href="resources/css/global.css" rel="stylesheet">
<html>
<head>
    <title></title>
    <template:javascript/>
</head>
<body>
    <div class="container">
        <modals:spell-book-modal/>
    </div>

</body>
</html>
