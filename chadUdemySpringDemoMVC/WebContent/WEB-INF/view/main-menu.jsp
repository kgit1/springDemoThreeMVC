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
<div class="main" class="button">
<h2>Spring MVC DEMO - Home Page</h2>
<hr>
<p><a href="showForm" class="button">showForm</a></p>
<p><a href="student/showForm" class="button">StudentForm</a></p>
<!-- /chadUdemySpringDemoMVC/WebContent/WEB-INF/view/wattomcat.jsp -->
<p><a href="funny/showForm" class="button">Silly Controller</a></p>
<hr>
<p><a href="${pageContext.request.contextPath}/tomcatWinStart" class="button">tomcatWinStart</a></p>
<p><a href="wattomcat" class="button">How to deploy .war on tomcat</a></p>
<p><a href="countryFile" class="button">Use properties file to load country options</a></p>
<p><a href="radioButton" class="button">How to populate radio buttons</a></p>
<p><a href="http://docs.spring.io/autorepo/docs/spring/current/
spring-framework-reference/htmlsingle/#view-jsp-formtaglib" class="button">Spring Form tags</a><p>

<input type="button" onclick="doSomeWork()" value="Click Me"/>

<img src="${pageContext.request.contextPath}/resources/images/yol.png">
</div>

</body>
</html>