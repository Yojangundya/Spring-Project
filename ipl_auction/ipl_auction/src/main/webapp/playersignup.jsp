<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Player Signup</title>
</head>
<style>
select {
  width: 100%;
  padding: 16px 20px;
  border: none;
  border-radius: 4px;
  background-color: #f1f1f1;
}
</style>
<body>
	<h1>Player Signup</h1>
	<br>
	<form:form action="playersignup" modelAttribute="player" method="post">
		<h2>
			Name:
			<form:input path="name" />
		</h2>
		<h2>
			Role:
			<form:select path="role">
		</h2>
		<form:option value="AllRounder">AllRounder</form:option>
		<form:option value="Batsman">Batsman</form:option>
		<form:option value="Bowler">Bowler</form:option>
		<form:option value="WicketKeeper">WicketKeeper</form:option>
		</form:select>
		<h2>
			Username:
			<form:input path="username" />
		</h2>
		<h2>
			Password:
			<form:input path="password" />
		</h2>
		<h2>
			Country:
			<form:input path="country" />
		</h2>
		<h2>
			Base Price:
			<form:input path="price" />
		</h2>

		<form:button>Save</form:button>
		<form:button type="reset">Cancel</form:button>
	</form:form>
	<br>
	<a href="index.jsp"><button>Back</button></a>

</body>
</html>