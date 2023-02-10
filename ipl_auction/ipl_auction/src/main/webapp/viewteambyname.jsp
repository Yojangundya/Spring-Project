<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Team</title>
</head>
<body>
<form action="fetchusingteam">
Select Team: 
<select name="name">
<c:forEach var="team" items="${teams }">
<option value="${team.getName() }">${team.getName() }</option>
</c:forEach>
</select>
<button>Search</button>
</form>
<a href="teamhomedummy"><button>Back</button></a>
</body>
</html>