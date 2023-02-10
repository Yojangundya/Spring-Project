<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Players</title>
</head>
<body>
<h1>List Of All Players</h1>
<table border="1">
<tr>
<th>Player Name</th>
<th>Role</th>
<th>Country</th>
<th>Status</th>
<th>Price</th>
<th>Change Status</th>
</tr>
<c:forEach var="player" items="${players }">
<tr>
<th>${player.getName() }</th>
<th>${player.getRole() }</th>
<th>${player.getCountry() }</th>
<th>${player.getStatus() }</th>
<th>${player.getPrice() }</th>
<th><a href="changeplayerstatus?id=${player.getId() }"><button>Change Status</button></a></th>
</tr>
</c:forEach>
</table>
<a href="managementhome.jsp"><button>Back</button></a>
</body>
</html>