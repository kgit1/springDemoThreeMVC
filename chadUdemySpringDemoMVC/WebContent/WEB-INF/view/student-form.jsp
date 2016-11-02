<!-- adds spring form tags to jsp -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resources/css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student form</title>
</head>
<body>
<div class="main">
<a href="${pageContext.request.contextPath}">main1</a>

	<!--create spring form mapped by name "/processForm"
	and add data to model attribute by name "student"  -->
	<form:form action="processForm" modelAttribute="student">
	
	<!-- access student object through model attribute and model
	and  use object's getter "getFirstName" -->
	First name: <form:input path="firstName"/>
	
<br><br>
	<!-- access student object through model attribute and model
	and use object's getter "getLastName" -->
	Last name: <form:input path="lastName"/>
<br><br>
	
	<!-- dropdownlist of given countries -->
	Country:    <form:select path="country">
		<form:option value="-" label="--Please Select"></form:option>
		<form:option value="France" label="France"></form:option>
		<form:option value="Brazil" label="Brazil"></form:option>
		<form:option value="Ireland" label="Ireland"></form:option>
		<form:option value="USA" label="USA"></form:option>
		<form:option value="Ukraine" label="Ukraine"></form:option>
		<form:option value="Poland" label="Poland"></form:option>
		<form:option value="Netherland" label="Netherland"></form:option>
		
		<!-- dropdown list from ArrayList in object -->
		<form:options items="${student.countryOptions}"/>
		
		<!-- dropdown list from LinkedHashMap --> 
		<form:options items="${student.countryList}"/>
		
		<!-- dropdown list from properties file -->
		<!-- access data from model attribute -> theCountryOptions1 -->
		<!-- annotated by @Value in StudentController -->
		<form:options items="${theCountryOptions1}"/>
		
	</form:select>
<br><br>
		<!-- radiobuttons and checkboxes -->
	Favorite Language:
	<!-- path - where data will go ->"favoriteLanguage"(student.setFavoriteLanguage) -->
	<!-- value - what data will go -->
		Java <form:radiobutton path="favoriteLanguage" value="Java" />
		C# <form:radiobutton path="favoriteLanguage" value="C#" />
		PHP <form:radiobutton path="favoriteLanguage" value="PHP" />
		Ruby <form:radiobutton path="favoriteLanguage" value="Ruby" />
<br><br>
	Favorite Language populated: 
	<!-- path - where data will go ->"favoriteLanguage"(student.setFavoriteLanguage) -->
	<!-- value - what data will go -->
	<form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"  />
<br><br>
	Favorite Language populated1:
	<form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions1}" />
<br><br>
	Operating Systems:
		Linux <form:checkbox path="operatingSystems" value="Linux" />
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
		MS Windows <form:checkbox path="operatingSystems" value="MS Window" />		
	
	<!-- will access student object through model attribute and model
	and will use object setters "setFirstName" and "getLastName" -->
	<input type="submit" value="Submit"/>
	
	</form:form>
	<hr>
	<img src="${pageContext.request.contextPath}
	/resources/images/spring-form.jpg"/>
</div>
</body>
</html>