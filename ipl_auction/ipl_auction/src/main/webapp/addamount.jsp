<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Amount</title>
</head>
<body>
<%int id=Integer.parseInt(request.getParameter("id")); %>
<h1>Add Amount</h1>
<form action="addamount">
Enter Amount: <input type="text" name="amount"><br>
<input type="text" name="id" value="<%=id %>" hidden="hidden">
<button>Add</button><button>Cancel</button>
</form>
<a href="viewallteam"><button>Back</button></a>
</body>
</html>