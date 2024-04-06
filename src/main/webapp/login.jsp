<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<style type="text/css">
#logindiv{
 	border:1px solid black;
    border-radius: 7px;
    height: 250px;
    width: 350px;
    display: flex;
    flex-direction: row;
    justify-content: center;
    color: white;
    font-family: sans-serif;
    font-size: x-large;
    position: absolute;
    left: 450px;
    top: 140px;
    background-color: rgb(15,28,45);
    line-height: 36px;
    box-shadow: 10px 10px 5px  rgb(2,6,9);

}
body{
  background-color: rgb(228,189,221);
  background-image: url("https://i.pinimg.com/originals/c9/2f/25/c92f25ecc530424e4f27c438b10b7d30.png");
  background-repeat: no-repeat;
  background-size:cover;
}
h1{
  display: flex;
  justify-content: center;
  font-family: sans-serif;
  color: white;
  text-shadow: 10px 10px 10px black;
}
#bt{
    box-shadow: 10px 10px 5px  rgb(2,6,9);
    padding: 4px;
}
#bt:hover{
    transform: scale(1.2);
    background-color: rgb(116,198,212);
;

}
#logindiv:hover{
    transform: scale(1.1);

}

</style>
</head>
<body>
  <h1>Login Page</h1>

	<div id="logindiv">
	<form id="form" action="login"  method="post">
		<br> Email: <input type="text" name="email"> <br>
		<br> Password: <input type="password" name="password"> <br>
		<br> <input id="bt" type="submit" >
	</form>
	
	</div>
</body>
</html>