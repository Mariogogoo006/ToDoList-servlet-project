<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>signup</title>
<style type="text/css">
#signdiv{
    border:1px solid black;
    border-radius: 7px;
    height: 360px;
    width: 400px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    position: absolute;
    left: 450px;
    top: 130px;
    background-color: rgb(15,28,45);
    line-height: 40p;
    color: white;
    font-family: sans-serif;
    font-size: large;
    box-shadow: 10px 10px 5px  rgb(2,6,9);

}

    body{
  background-color: rgb(228,189,221);
   /* background-image: url("https://64.media.tumblr.com/cf55c6240d4eac20a9f7f99710a1dc63/tumblr_ni57fkGTPX1smn4pqo8_1280.jpg");*/
  background-image: url("https://i.pinimg.com/originals/c9/2f/25/c92f25ecc530424e4f27c438b10b7d30.png");
  background-repeat: no-repeat;
  background-size:cover;

}
#form{
  padding:70px;
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
    display: flex;
    justify-content: center;

}
#bt:hover{
    transform: scale(1.2);
    background-color: rgb(116,198,212);
}
#signdiv:hover{
    transform: scale(1.1);
}

</style>
</head>
<body >
    <h1>Sign Up Page:</h1>
<div>
   
	<div id="signdiv">
	<form  id="form" action="saveuser" enctype="multipart/form-data" method="post">
		<br>  Name:  <input type="text" name="name"> <br>
		<br> Email: <input type="text" name="email"> <br>
		<br> Contact: <input type="text" name="contact"> <br>
		<br> Password: <input type="password" name="password"> <br>
		<br> Image: <input type="file" name="image"> <br>
		<br> <input id="bt" type="submit" name="">
	</form>
	
	</div>
</div>
</body>
</html>
