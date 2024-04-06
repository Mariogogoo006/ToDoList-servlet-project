<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task</title>
<style type="text/css">
#task{

 border:1px solid black;
    border-radius: 7px;
    height: 460px;
    width: 400px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    position: absolute;
    left: 400px;
    top: 120px;
    background-color: rgb(15,28,45);
    box-shadow: 10px 10px 5px  rgb(2,6,9);    line-height: 30p;
    color: white;
    font-family: sans-serif;
    font-size: large;
}
form{
padding: 40px;
/* left:50px */

}
#task:hover{
    transform: scale(1.1);
}
#bt:hover{
    transform: scale(1.2);
    background-color: rgb(116,198,212);
}
body{
  background-color: rgb(228,189,221);
 /* background-image: url("https://64.media.tumblr.com/cf55c6240d4eac20a9f7f99710a1dc63/tumblr_ni57fkGTPX1smn4pqo8_1280.jpg");*/
  background-image:url("https://i.pinimg.com/originals/41/a9/b3/41a9b3ca83fb4005e7ec4860f5d03071.png");
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
}


</style>
</head>
<body>
    <h1>Add Task</h1>
<div>


<div id="task" >
<form action="addtask" method="post" >

Task Title: <input type="text" name="tasktitle" required><br><br>
Task Description: <input type="text" name="taskdescription" required><br><br>
Option: <br><br>
<label for="optional">
	<input type="radio" id="option1" value="low" name="taskpriority"> Low
</label> <br><br>
<label for="optional2">
	<input type="radio" id="option2" value="medium" name="taskpriority"> Medium
</label> <br><br>
<label for="optional3">
	<input type="radio" id="option3" value="high" name="taskpriority"> High
</label> <br><br>
Due Date: <input type="date" name="taskduedate" >  <br><br>
<input id="bt" type="submit">
</div>

</form>
</div>
</body>
</html>