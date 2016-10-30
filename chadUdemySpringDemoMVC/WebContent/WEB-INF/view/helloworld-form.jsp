<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resources/css/main.css">
<title>Helloworld form</title>
</head>
<body>

<!-- take's data from our input and sent's it to our model
binded to own name -> studentName and form name -> processForm 
and than after controller by form name sent's us to some page by form name
we can rich this data by ${param.studentName} -->
	<form action="processForm" method="GET">
	
		<input type="text" name="studentName"
		placeholder="Whats's your name?"/>
		
		<input type="submit"/>	
	</form>
	
	<hr>
	<form action="processFormVersionTwo" method="GET">
		<p><b>Student name to uppercase and message</b></p>
	
		<input type="text" name="studentName"
		placeholder="Whats's your name?"/>
		
		<input type="submit"/>	
	</form>
	<hr>
	<form action="processFormVersionThree" method="GET">
		<p><b>Student name to uppercase and message v2</b></p>
	
		<input type="text" name="studentName"
		placeholder="Whats's your name?"/>
		
		<input type="submit"/>	
	</form>
	

</body>
</html>