<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Player Login</title>
</head>
<style>
body {
  background-image: url("https://assets.bcci.tv/bcci/photos/7000/c4860467-9d7d-42dd-8676-1b74b9bda818.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  margin: 0;
  padding: 0;
  color: white;
}
.container {
    text-align: center;
    margin-top: 162px;
    margin-left: 491px;
    border: 1px;
    width: 406px;
    border-radius: 45px;
    height: 310px;
    background-color: #4158D0;
}
 #man{
position: relative;
top :30px;
color: white;
font-family: inherit;
}
#marque{
color: white;
background:#33006F;
height: 40px;
align-items: center;
}
marquee h1{
font-size:20px;
background:-webkit-linear-gradient(#33006F);
-webkit-background-clip: text;
-webkit-text-fill-color:#cedc0d;
}
.textf{
position: relative;
top: 20px;
font: 10px;
}
#button{
position: relative;
top: 20px;
left: 10px;
border-radius: 10px;
font-size: medium;
border: 1px solid white;
color: white;
background-color: #4158D0;
}
#input{
height: 20px;
border-radius: 10px;
border: 1px solid white;
font-size: medium;
font: 10px;
}
#back{
position: relative;
left: 15px;
top: 20px;
border-radius: 10px;
font-size: medium;
border: 1px solid white;
background-color: #4158D0;
color: white;
}

</style>
<body>
<marquee scrollamount="10" loop="100" height="60px" direction="right" id="marque"><h1>WELCOME TO 2023 IPL AUCTION</h1><br></marquee>
<h1>${msg }</h1>
<div class="container">
<h1 id="man">Player Login</h1><br>
<form action="playerlogin" method="post">
<div class="textf">
Username: <input type="text" name="username" id="input"><br><br>
Password: <input type="text" name="password" id="input"><br><br>
</div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button id="button">Login</button>&nbsp;&nbsp;&nbsp;&nbsp;<button type="reset" id="button">Cancel</button><br><br>
</form>
&nbsp;&nbsp;<a href="index.jsp"><button id="back">Back</button></a>
</div>
</body>
</html>