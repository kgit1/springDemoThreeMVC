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
<h5>v10nov2016 Spring MVC DEMO - Home Page</h5>
Cogito ergo sum
<div class="wrap">
<hr>
<div class="left">
<div>
<table>
<tr><td>FORMS:</td><td><a href="showForm" class="button">showForm</a></td><tr>
<tr><td></td><td><a href="student/showForm" class="button">StudentForm</a></td><tr>
<!-- /chadUdemySpringDemoMVC/WebContent/WEB-INF/view/wattomcat.jsp -->
<tr><td></td><td><a href="funny/showForm" class="button">Silly Controller</a></td></tr>
</table>
</div>
<hr>
<div>
<table>
<tr><td>INFO:</td><td><a href="${pageContext.request.contextPath}/tomcatWinStart" class="button">tomcatWinStart</a></td><tr>
<tr><td></td><td><a href="wattomcat" class="button">Deploy .war on tomcat</a></td><tr>
<tr><td></td><td><a href="countryFile" class="button">Use properties file to load country options</a></td><tr>
<tr><td></td><td><a href="radioButton" class="button">Populate radio buttons</a></td><tr>
<tr><td></td><td><a href="springHibernate" class="button">SpringHibernateStartBuild</a></td><tr>
<tr><td></td><td><a href="http://docs.spring.io/autorepo/docs/spring/current/
spring-framework-reference/htmlsingle/#view-jsp-formtaglib" class="button">Spring Form tags</a></td><tr>
<tr><td></td><td><a href="http://www.instantshift.com/2010/02/10/21-free-music-players-for-your-website/" class="button">Music players for site</a></td><tr>
</table>
</div>
</div>

<div class="right">
<div>
<p>HTML:&ensp;&ensp;
<a href="http://www.w3schools.com/css/default.asp" class="button">CSS</a>
<a href="http://www.wikihow.com/Insert-Spaces-in-HTML" class="button">Insert spaces</a></p>
<p>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
<a href="http://shpargalkablog.ru/2012/04/display-block-inline-css.html" class="button">Inline, block, inline block</a></p>
<p>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
<a href="http://learn.shayhowe.com/html-css/adding-media/" class="button">Adding media</a></p>
</div>
<hr>
<div>
<p>MYSQL:&ensp;<a href="http://www.mysql.ru/docs/man/SELECT.html" class="button">SELECT</a>
<a href="http://www.mysql.ru/docs/man/JOIN.html" class="button">JOIN</a>
<a href="http://www.mysql.ru/docs/man/UNION.html" class="button">UNION</a>
</p>
<p>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
<a href="http://www.mysql.ru/docs/man/INSERT.html" class="button">INSERT</a>
<a href="http://www.mysql.ru/docs/man/UPDATE.html" class="button">UPDATE</a>
<a href="http://www.mysql.ru/docs/man/DELETE.html" class="button">DELETE</a>
<a href="http://www.mysql.ru/docs/man/TRUNCATE.html" class="button">TRUNCATE</a>
</p>
<p>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
<a href="bankSQL" class="button">BANK</a>
</p>
</div>
<div>
<p>HIBERNATE:<a href="hibernateCrud" class="button">CRUD</a>
<a href="hibernateDz" class="button">DZ</a></p>
</div>
<div>
<p>JAVA:<a href="stringFileToP" class="button">stringFileToP</a>
<a href="simpleBank" class="button">simpleBank</a></p>
</div>
</div>
</div>

<hr>
<p><input type="button" onclick="doSomeWork()" value="Click Me"/></p>

<embed src="http://embedpleer.net/normal/track?id=B2nq55Bi2zb01Bv5y&t=grey" 
type="application/x-shockwave-flash" width="578" height="43"></embed>

<object width="578" height="43">
<param name="movie" value="http://embedpleer.net/normal/track?id=B2nfs0Bi2zb01B378&t=grey"></param>
<embed src="http://embedpleer.net/normal/track?id=B2nfs0Bi2zb01B378&t=grey" 
type="application/x-shockwave-flash" width="578" height="43"></embed>
</object>

<img src="${pageContext.request.contextPath}/resources/images/yol.png">
</div>

</body>
</html>