<%--
  Created by IntelliJ IDEA.
  User: PVarnerHowland
  Date: 9/17/2014
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>--%>
<%--<%@ taglib prefix="modals" tagdir="/WEB-INF/tags/modals" %>--%>
<%--<link href="resources/css/global.css" rel="stylesheet">--%>
<html ng-app="EncountersApp">
<head>
    <title>Encounters</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    <script src="<%=request.getContextPath()%>/resources/encounters/ui-bootstrap-tpls-0.13.0.min.js"></script>

    <script src="<%=request.getContextPath()%>/resources/encounters/app.encounters.js"></script>
    <script src="<%=request.getContextPath()%>/resources/encounters/monster/monster-directive.js"></script>
    <script src="<%=request.getContextPath()%>/resources/encounters/monster/traits-and-abilities.js"></script>
    <script src="<%=request.getContextPath()%>/resources/encounters/monster/actions-directive.js"></script>
    <script src="<%=request.getContextPath()%>/resources/encounters/monster/monster-controller.js"></script>
    <script src="<%=request.getContextPath()%>/resources/encounters/monster/attack-controller.js"></script>
    <script src="<%=request.getContextPath()%>/resources/encounters/monster/edit-action-controller.js"></script>

    <script>var ctx = "<%=request.getContextPath()%>"</script>
</head>
<body>
    <div class="container" ng-controller="EncounterListController">
        <dev ng-repeat='monster in monsters' class='list-group'>
            <div ng-controller="monsterController">
                <accordion close-others="oneAtATime">
                    <monster></monster>
                </accordion>
            </div>
        </dev>
    </div>
</body>
</html>
