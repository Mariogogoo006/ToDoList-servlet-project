<%@page import="dto.Task"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dto.User" %>
    <%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home</title>
<style type="text/css">
#addtask{
  height: 30px;
  width: 100px;
  border: 1px solid black;
  border-radius: 6px;
  background-color:   rgb(255,235,205);
  padding: 4px;
  text-align: center;
  text-decoration: none;
  font-family: sans-serif;   
  box-shadow: 10px 10px 5px  rgb(2,6,9);
}
#addtask:hover{
 	background-color: rgb(116,198,212);
    transform: scale(1.1);
}
h2{
    justify-content: center;
    display: flex;
    font-family: sans-serif;
    color: white;
}
body{
  background-image: url("https://i.pinimg.com/originals/c9/2f/25/c92f25ecc530424e4f27c438b10b7d30.png");
  background-repeat: no-repeat;
  background-size:cover;
}
table{
  border: 5px;
  border-radius:8px;
  border-collapse: collapse;
  display: flex;
  font-family: sans-serif;
  box-shadow: 10px 10px 5px  rgb(2,6,9);

}
td{
  padding: 15px;
  color: white;
  
}
th{
  padding: 15px;
  background-color: blanchedalmond ;
}
#mytable{
  position: relative;
  left: 290px;
}
#indiv{
  padding: 30px;
  background-color:rgb(29,41,72);
  border-radius: 5px;
  box-shadow: 10px 10px 5px  rgb(2,6,9);
  width: 500px;
  position: relative;
  left: 330px;
}
a{
text-decoration: none;
font-family: sans-serif;
}
</style>
</head>
<body >
<div id="mydiv">        
<h2 >Hello User..</h2> <br><br><br>
<div id="indiv">
<%	User user = (User)request.getSession().getAttribute("user");
String username =user.getUsername();%>

<% String image= new String(Base64.getEncoder().encode( user.getUserimage() )); %>
<center><img  alt="" src="data:image/jpeg;base64,<%= image %>" width="150" height="150"></center>

<h2>Welcome: <%= username %></h2>
<h2>Email: <%= user.getUseremail() %></h2>
<br> 
</div>
<br>
<br>
<center><div id=addtask><a  href="task.jsp">addTask</a> </div></center>
  
<div id="mytable">
  <h3>Task</h3>
<% List <Task>  tasks =(List)request.getAttribute("tasks");  %>
<table border="5px">
<tr>
<th>Id</th>
<th>Title</th>
<th>Description</th>
<th>Priority</th>
<th>Due Date</th>
<th>Status</th>
<th>Delete</th>
<th>Edit</th>
</tr>

<% int num=1; %>
<% for(Task task:tasks) { %>
<tr>
<td><%= num %></td>
<td><%= task.getTasktitle()%></td>
<td><%= task.getTaskdescription()%></td>
<td><%= task.getTaskpriority()%></td>
<td><%= task.getTaskduedate()%></td>
<td><%= task.getTaskstatus()%></td>
<td> <a href="delete?taskid=<%= task.getTaskid()%> ">Delete</a></td>
<td> <a href="edit?taskid=<%= task.getTaskid()%> ">Edit</a></td>
</tr>
<% num+=1; %>
<% } %>
</table>

</div>
</div>


</body>
</html>