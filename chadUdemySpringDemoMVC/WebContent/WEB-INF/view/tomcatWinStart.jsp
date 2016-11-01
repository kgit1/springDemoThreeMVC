<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resources/css/main.css">
<title>tomcatWinStart</title>
</head>
<body>
<a href="${pageContext.request.contextPath}">main1</a>
<hr>
<p>1) Windows (if Tomcat is setup as Windows Service)</p>

<p>To Start server: <Tomcat Root>/bin>Tomcat8.exe start</p>
<p>To Stop server: <Tomcat Root>/bin>Tomcat8.exe stop</p>
<p>2) Windows (if you have downloaded binaries as .zip)</p>

<p>To Start server: <Tomcat Root>/bin>catalina.bat start</p>
<p>To Stop server: <Tomcat Root>/bin>catalina.bat stop</p>

</body>
</html>