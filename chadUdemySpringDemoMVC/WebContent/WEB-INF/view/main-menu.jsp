<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- CSS -->
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resources/css/main.css">

<!-- JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

<title>Home page</title>
</head>
<body>
<h2>Spring MVC DEMO - Home Page</h2>
<p><a href="http://docs.spring.io/autorepo/docs/spring/current/
spring-framework-reference/htmlsingle/#view-jsp-formtaglib">Spring Form tags</a><p>
<hr>
<p><a href="showForm">showForm</a></p>
<p><a href="wattomcat">How to deploy .war on tomcat</a></p>
<!-- /chadUdemySpringDemoMVC/WebContent/WEB-INF/view/wattomcat.jsp -->
<hr>
<p><a href="student/showForm">StudentForm</a></p>


<p><a href="funny/showForm">Silly Controller</a></p>
<input type="button" onclick="doSomeWork()" value="Click Me"/>

<img src="${pageContext.request.contextPath}/resources/images/yol.png">

</body>
</html>