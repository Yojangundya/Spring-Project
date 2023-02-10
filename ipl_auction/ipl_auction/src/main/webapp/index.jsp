<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<html>
<head>
<title>IPL Auction</title>
<style>
}
h1{
text-align:  center;
color:white;
font-size: 30px;
font-family: inherit;
}
#qwe{
margin-left: 560px;
margin-top: 70px;
width:250px;
border-radius: 10px;
font-size: 15px;
height:35px;
text-align: center;
border: none;
font-family: inherit;
}
#qwe:hover{
background-color: #FF0000;
background-image: linear-gradient(180deg, #FF0000 0%, #FFFFFF 23%, #ffffff 56%, #6284FF 100%);


}
#qe:hover{
background-color: #FF0000;
background-image: linear-gradient(180deg, #FF0000 0%, #FFFFFF 23%, #ffffff 56%, #6284FF 100%);


}
#qe{
margin-left: 560px;
margin-top: 30px;
width:250px;
border-radius: 10px;
font-size: 15px;
height:35px;
text-align: center;
border: none;
font-family: inherit;
}
#qee:hover{
background-color: #FF0000;
background-image: linear-gradient(180deg, #FF0000 0%, #FFFFFF 23%, #ffffff 56%, #6284FF 100%);



}

#aa{
margin-left: 600px;
margin-top: 50px;
color: white;
text-decoration: none;
font-family: inherit;
font-size: 15px;

}
#aa:hover{
font-size:16px;
background:-webkit-linear-gradient(#eee,#333);
-webkit-background-clip: text;
-webkit-text-fill-color:#cedc0d;

}
.nav{
margin-top: -15px;

}
#nv{
background-color: darkblue;
margin-left: -15px;
margin-right: -15px;

}
body{
background-image: url('https://bcciplayerimages.s3.ap-south-1.amazonaws.com/bcci/images/1644843895_cropped.jpg'); 
background-size:cover;
background-repeat: no-repeat;
min-height: 100%;
margin: 0;
padding: 0;

}
marquee {
	color: white;
}

</style>
</head>
<h1 style="color: white;"> ${msg}</h1>
<body>
<div id="nv" >
<div class="nav" >
<marquee scrollamount="10" loop="100" height="60px" direction="right"><h1>WELCOME TO 2023 IPL AUCTION</h1><br></marquee></div></div>
<a href="managementLogin.jsp"><button id="qwe">Login As Management</button></a><br>
<a href="teamLogin.jsp"><button id="qe">Login As Team</button></a><br>
<a href="playerLogin.jsp"><button id="qe">Login As Player</button></a><br><br>
<a href="signup.jsp" id="aa">New? Click here to Signup</a>

</body>
</html>
