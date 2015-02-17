<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>
<link href="resources/css/global.css" rel="stylesheet">

<html>
<head>
    <title>DM Tools</title>
</head>
<body>
  <h1>Treasure Generator</h1>
  <form>
  Size
  <select name="size">
    <option value="individual">Individual</option>
    <option value="horde">Horde</option>
  </select>
  CR
  <select>
    <option>0 to 4</option>
    <option>5 to 10</option>
    <option>11 to 16</option>
    <option>17+</option>
  </select>
  </form>
  <c:forEach items="${allItems}" var="item">
    <div>
      <h2>${item.name}</h2>
    </div>
  </c:forEach>
</body>
</html>
