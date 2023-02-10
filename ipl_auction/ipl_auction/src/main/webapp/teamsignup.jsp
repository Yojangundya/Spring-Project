<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<h1>Team Signup</h1><br>
<form:form action="teamsignup" modelAttribute="team" method="post">
<h2>Team Name:<form:input path="name"/></h2>
<h2>Username:<form:input path="username"/></h2>
<h2>Password:<form:input path="password"/></h2>
<h2>Wallet:<form:input path="wallet"/></h2>
<h2>Team Logo:<form:input path="image"/></h2>
<form:button>Save</form:button><form:button type="reset">Cancel</form:button>
</form:form>
<br>
<a href="index.jsp"><button>Back</button></a>
</body>
</html>