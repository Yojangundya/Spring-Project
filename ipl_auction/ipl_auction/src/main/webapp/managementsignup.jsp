<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Management Signup</h1><br>
<form:form action="managementsignup" modelAttribute="management" method="post">
<h2>Username:<form:input path="username"/></h2>
<h2>Password:<form:input path="password"/></h2>
<form:button>Save</form:button><form:button type="reset">Cancel</form:button>
</form:form>
<br>
<a href="index.jsp"><button>Back</button></a>
</body>
</html>