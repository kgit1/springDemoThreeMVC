<!-- adds spring form tags to jsp -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- add spring forEach -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- CSS -->
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resources/css/main.css">
<title>Student confirmation form</title>
</head>
<body>
<a href="${pageContext.request.contextPath}">main1</a>

<!-- calls student.getFirstName() and student.getLastName() -->
<p>The student is confirmed:${student.firstName} ${student.lastName}</p>
<p>Country: ${student.country}</p>
<p>Favorite Language: ${student.favoriteLanguage}</p>
<p>OS: 
	<c:forEach items="${student.operatingSystems}" var="singleOS">
		${singleOS}  
	</c:forEach>
	</p>

</body>
</html>