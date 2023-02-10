<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>List Of All Teams</h1>
<table border="1">
<tr>
<th>Team Name</th>
<th>Wallet</th>
<th>Status</th>
<th>Players</th>
<th>Change Status</th>
<th>Add Amount</th>
</tr>
<c:forEach var="team" items="${teams}">
<tr>
<th>${team.getName() }</th>
<th>${team.getWallet() }</th>
<th>${team.isStatus() }</th>
<th><a href="viewplayers?id=${team.getId() }"><button>View Player</button></a></th>
<th><a href="changestatusteam?id=${team.getId() }"><button>Change</button></a></th>
<th><a href="addamount.jsp?id=${team.getId() }"><button>Add Amount</button></a></th>
</c:forEach>
</table>
<a href="managementhome.jsp"><button>Back</button></a>
</body>
</html>