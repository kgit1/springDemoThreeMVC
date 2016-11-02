<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resources/css/main.css">
<title>Radio Buttons</title>
</head>
<body>
<div class="main">
<a href="${pageContext.request.contextPath}">main1</a>
<hr>
<div class="message-container message-container--article"> 
<div class="a1">FAQ: How to populate radiobuttons with items from Java class?</div>
 <div class="a2 mb15">Section 14, Lecture 127</div> <div ng-bind-html="content" prettify="">
 <div class="asset-container">
    <div class="asset-container__padding article-view">
        <div class="w3c-default">
            <p><strong>FAQ: How to populate radiobuttons with items from Java class like we did with selectlist?</strong></p>

<p>You can follow a similar approach that we used for the drop-down list.</p>
<p>Here are the steps</p>
<p>1. Set up the data in your Student class</p>
<p>Add a new field</p>
<p>&nbsp;&nbsp; &nbsp;private LinkedHashMap&lt;String, String&gt; favoriteLanguageOptions;</p>
<p>In your constructor, populate the data</p>
<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;// populate favorite language options
<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;favoriteLanguageOptions = new LinkedHashMap&lt;&gt;();</p>
<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;// parameter order: value, display label
<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;//
<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;favoriteLanguageOptions.put("Java", "Java");
<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;favoriteLanguageOptions.put("C#", "C#");
<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;favoriteLanguageOptions.put("PHP", "PHP");
<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;favoriteLanguageOptions.put("Ruby", "Ruby");&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</p>
<p>Add getter method</p>
<p>&nbsp;&nbsp; &nbsp;public LinkedHashMap&lt;String, String&gt; getFavoriteLanguageOptions() {
<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;return favoriteLanguageOptions;<br>&nbsp;&nbsp; &nbsp;}</p>
<p>2. Reference the data in your form</p>
<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Favorite Language:
<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;form:radiobuttons path="favoriteLanguage" items="$ {student.favoriteLanguageOptions}"&nbsp; /&gt;</p>
        </div>
    </div>
</div>
</div> 
</div>
</body>
</html>