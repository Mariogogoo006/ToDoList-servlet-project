<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>index</title>
</head>
<style>
body{
  background-color: rgb(120,138,206);
  /*background-image: url("https://64.media.tumblr.com/34c5b5b53fdfcaa26a825fe45440ac46/tumblr_nf224tm3091smn4pqo10_1280.jpg");*/
  background-image:url("https://i.pinimg.com/originals/41/a9/b3/41a9b3ca83fb4005e7ec4860f5d03071.png");
  background-repeat: no-repeat;
  background-size:cover;
  
}
#innerdiv{
	height: 200px;
	width: 400px;
	background-color:rgb(7,8,12);
    box-shadow: 10px 10px 5px  rgb(2,6,9);
    background-image: url("https://i.pinimg.com/originals/ad/76/da/ad76dab245e8fa46bb8c2df200274879.jpg");
    display: flex;
    justify-content: center;
    align-items: center;
    position: absolute;
    left: 440px;
    gap: 30px;
    top: 200px;
    border-radius: 10px;
    color: white;

}

#login{
	height: 30px;
	width: 100px;
	border: 1px solid black;
	border-radius: 10px;
	background-color:   rgb(182,181,213);
    box-shadow: 10px 10px 5px  rgb(2,6,9);
    padding: 4px;
    text-align: center;
    color:white;
}
#signin{
	height: 30px;
	width: 100px;
	border: 1px solid black;
	border-radius: 10px;
	background-color:rgb(182,181,213);
    box-shadow: 10px 10px 5px  rgb(2,6,9);
    padding: 4px;
    text-align: center;
    color: white;

}
a{
    text-decoration: none;
    color: black;
    font-size:x-large;
    font-family: sans-serif;
}
h1{
  display: flex;
  justify-content: center;
  font-family: sans-serif;
  word-spacing: 10%;
  color: white;
  text-shadow: 10px 10px 10px black;
  
  
}
#innerdiv:hover{
    transform: scale(1.1);
}
#signin:hover{
    background-color: rgb(116,198,212);
    transform: scale(1.1);

}
#login:hover{
    background-color: rgb(116,198,212);
    transform: scale(1.1);

}
</style>
<body>
	 <h1>Welcome  User</h1> 
		<div id="innerdiv">
            <div id="login">	
                <a  href="login.jsp">log in</a></div>
            <div id="signin">	
                	<a  href="signup.jsp">Sign up</a>
            </div>
		</div>	
		
   
</body>
</html>