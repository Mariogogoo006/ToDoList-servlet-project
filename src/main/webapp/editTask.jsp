<%@page import="dto.Task"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Task</title>
<style type="text/css">
</style>
</head>
<body>
	<h1>Edit task</h1>
	<div>


		<div id="task">
			<%
			Task task = (Task) request.getAttribute("task");
			%>
			<form action="updatetask" method="post">
			Task id: <input type="text" name="taskid" hidden=""
				value="<%=task.getTaskid()%>"> <br>
			<br> Task Title: <input type="text" name="tasktitle" required
				value="<%=task.getTasktitle()%>"><br>
			<br> Task Description: <input type="text" name="taskdescription"
				required value="<%=task.getTaskdescription()%>"=><br>
			<br> Current Priority:
			<h4> <input type="text" name="pre-priority" hidden="" value="<%=task.getTaskpriority()%>"> <%=task.getTaskpriority()%></h4>
			Option: <br>
			<br> <label for="optional"> <input type="radio"
				id="option1" value="low" name="taskpriority"> Low
			</label> <br>
			<br> <label for="optional2"> <input type="radio"
				id="option2" value="medium" name="taskpriority"> Medium
			</label> <br>
			<br> <label for="optional3"> <input type="radio"
				id="option3" value="high" name="taskpriority"> High
			</label> <br>
			<br> Due Date: <input type="date" name="taskduedate"
				value="<%=task.getTaskduedate()%>"> <br>
			<br> Status: <input type="text" name="taskstatus"
				value="<%=task.getTaskstatus()%>"> <br>
				<p> <input type="text" value="<%= task.getUserid() %>" hidden="" name="userid"> </p>
			<br> <input id="bt" type="submit">
			
			</form>
		</div>
		</form>
	</div>
</body>
</html>