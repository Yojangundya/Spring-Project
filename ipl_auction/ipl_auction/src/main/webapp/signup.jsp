<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
</head>
<body>
<h1>Choose Your Role</h1>
<form action="signup" method="post">
<input type="radio" name="role" id="role" value="Management">Management<br>
<input type="radio" name="role" id="role" value="Team">Team<br>
<input type="radio" name="role" id="role" value="Player">Player<br><br>
<button>Submit</button>
</form>
</body> 
</html>