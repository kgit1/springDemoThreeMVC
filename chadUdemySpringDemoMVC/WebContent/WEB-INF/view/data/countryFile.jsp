<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resources/css/main.css">
<title>Countries from file</title>
</head>
<body>
<div class="main">
<a href="${pageContext.request.contextPath}">main1</a>
<hr>
<div class="message-container message-container--article">
 <div class="a1">FAQ: Use properties file to load country options</div>
  <div class="a2 mb15">Section 14, Lecture 124</div> 
  <div ng-bind-html="content" prettify="">
  <div class="asset-container">
    <div class="asset-container__padding article-view">
      <div class="w3c-default">
          <p><strong>Question:&nbsp;</strong></p><p>How to use properties file to load country options</p><p><strong>Answer:</strong></p><p>This solution will show you how to place the country options in a properties file. The values will no longer be hard coded in the Java code.</p>

<p><strong>1. Create a properties file to hold the countries. It will be a name value pair. &nbsp;Country code is name. Country name is the value.</strong></p>

<p>New text file: &nbsp;WEB-INF/countries.properties</p>

<p>BR=Brazil
FR=France
CO=Colombia
IN=India</p>

<p>Note the location of the properties file is very important. It must be stored in WEB-INF/countries.properties</p>

<p><strong>2. Update header section for Spring config file</strong>

</p>

<p>We are going to use a new set of Spring tags for &lt;util&gt;. As a result, you need to update the header information in the Spring config file.</p>

<p>File: spring-mvc-dmo-servlet.xml</p>

<p>Remove the previous header and add this.</p>

<p>&lt;beans xmlns="http://www.springframework.org/schema/beans"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"&nbsp;
xmlns:context="http://www.springframework.org/schema/context"
xmlns:mvc="http://www.springframework.org/schema/mvc"
xmlns:util="http://www.springframework.org/schema/util"
xsi:schemaLocation="
http://www.springframework.org/schema/beans
&nbsp; &nbsp; http://www.springframework.org/schema/beans/spring-beans.xsd
&nbsp; &nbsp; http://www.springframework.org/schema/context
&nbsp; &nbsp; http://www.springframework.org/schema/context/spring-context.xsd
&nbsp; &nbsp; http://www.springframework.org/schema/mvc
&nbsp; &nbsp; &nbsp; &nbsp; http://www.springframework.org/schema/mvc/spring-mvc.xsd
http://www.springframework.org/schema/util
&nbsp; &nbsp; http://www.springframework.org/schema/util/spring-util.xsd"&gt;</p>

<p><strong>3. Load the country options properties file in the Spring config file. Bean id: countryOptions</strong></p>

<p>File: spring-mvc-dmo-servlet.xml</p>

<p>Add the following lines:</p>

<p>&lt;util:properties &nbsp;id="countryOptions" location="classpath:../countries.properties" /&gt;</p>

<p><strong>4. Inject the properties values into your Spring Controller: StudentController.java</strong></p>

<p>@Value("# {countryOptions}") private Map&lt;String, String&gt; countryOptions;</p>

<p><strong>5. Add the country options to the Spring MVC model. Attribute name: theCountryOptions</strong></p>

<p>@RequestMapping("/showForm")
public String showForm(Model theModel) {

// create a student object
Student theStudent = new Student();

// add student object to the model
theModel.addAttribute("student", theStudent);

<strong><em>// add the country options to the model
theModel.addAttribute("theCountryOptions", countryOptions);
</em></strong>
return "student-form";
}</p>

<p><strong>6. Update the JSP page, student-form.jsp, to use the new model attribute for the drop-down list: theCountryOptions</strong></p>

<p>&lt;form:select path="country"&gt;

<em><strong>&lt;form:options items="${theCountryOptions}" /&gt;
</strong></em>
&lt;/form:select&gt;</p>

<p><strong>7. Remove all references to country option from your Student.java. &nbsp;</strong></p>

<p>Your file should look like:</p>

<p>package com.luv2code.springdemo.mvc;</p>

<p>public class Student {</p>

<p>private String firstName;
private String lastName;

private String country;

private String favoriteLanguage;

private String[] operatingSystems;

public Student() {

}

public String getFirstName() {
return firstName;
}</p>

<p>public void setFirstName(String firstName) {
this.firstName = firstName;
}</p>

<p>public String getLastName() {
return lastName;
}</p>

<p>public void setLastName(String lastName) {
this.lastName = lastName;
}</p>

<p>public String getCountry() {
return country;
}</p>

<p>public void setCountry(String country) {
this.country = country;
}</p>

<p>public String getFavoriteLanguage() {
return favoriteLanguage;
}</p>

<p>public void setFavoriteLanguage(String favoriteLanguage) {
this.favoriteLanguage = favoriteLanguage;
}</p>

<p>public String[] getOperatingSystems() {
return operatingSystems;
}</p>

<p>public void setOperatingSystems(String[] operatingSystems) {
this.operatingSystems = operatingSystems;
}

}</p>

<p>========</p>

<p><strong>Complete Source Files</strong></p>

<p>Here are all of the files that were modfied for this example.</p>



<p><strong>File: spring-mvc-dmo-servlet.xml</strong></p>

<p>&lt;?xml version="1.0" encoding="UTF-8"?&gt;</p>

<p>&lt;beans xmlns="http://www.springframework.org/schema/beans"</p>

<p>xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"&nbsp;</p>

<p>xmlns:context="http://www.springframework.org/schema/context"</p>

<p>xmlns:mvc="http://www.springframework.org/schema/mvc"</p>

<p>xmlns:util="http://www.springframework.org/schema/util"</p>

<p>xsi:schemaLocation="</p>

<p>http://www.springframework.org/schema/beans</p>

<p>&nbsp; &nbsp; http://www.springframework.org/schema/beans/spring-beans.xsd</p>

<p>&nbsp; &nbsp; http://www.springframework.org/schema/context</p>

<p>&nbsp; &nbsp; http://www.springframework.org/schema/context/spring-context.xsd</p>

<p>&nbsp; &nbsp; http://www.springframework.org/schema/mvc</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; http://www.springframework.org/schema/mvc/spring-mvc.xsd</p>

<p>http://www.springframework.org/schema/util</p>

<p>&nbsp; &nbsp; http://www.springframework.org/schema/util/spring-util.xsd"&gt;</p>

<p>&lt;!-- Step 3: Add support for component scanning --&gt;</p>

<p>&lt;context:component-scan base-package="com.luv2code.springdemo" /&gt;</p>

<p>&lt;!-- Step 4: Add support for conversion, formatting and validation support --&gt;</p>

<p>&lt;mvc:annotation-driven/&gt;</p>

<p>&lt;!-- Step 5: Define Spring MVC view resolver --&gt;</p>

<p>&lt;bean</p>

<p>class="org.springframework.web.servlet.view.InternalResourceViewResolver"&gt;</p>

<p>&lt;property name="prefix" value="/WEB-INF/view/" /&gt;</p>

<p>&lt;property name="suffix" value=".jsp" /&gt;</p>

<p>&lt;/bean&gt;</p>

<p>&lt;util:properties&nbsp; id="countryOptions" location="classpath:../countries.properties" /&gt;</p>

<p>&lt;/beans&gt;</p>

<p>---</p>

<p><strong>File: StudentController.java</strong></p>

<p>package com.luv2code.springdemo.mvc;</p>

<p>import java.util.Map;</p>

<p>import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;</p>

<p>@Controller
@RequestMapping("/student")
public class StudentController {</p>

<p>@Value("# {countryOptions}")
private Map&lt;String, String&gt; countryOptions;

@RequestMapping("/showForm")
public String showForm(Model theModel) {

// create a student object
Student theStudent = new Student();

// add student object to the model
theModel.addAttribute("student", theStudent);

// add the country options to the model
theModel.addAttribute("theCountryOptions", countryOptions);

return "student-form";
}

@RequestMapping("/processForm")
public String processForm(@ModelAttribute("student") Student theStudent) {

// log the input data
System.out.println("theStudent: " + theStudent.getFirstName()
+ " " + theStudent.getLastName());

return "student-confirmation";
}

}</p>

<p>---</p>

<p><strong>File: student-form.jsp</strong></p>

<p>&lt;%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %&gt;</p>

<p>&lt;!DOCTYPE html&gt;</p>

<p>&lt;html&gt;</p>

<p>&lt;head&gt;</p>

<p>&lt;title&gt;Student Registration Form&lt;/title&gt;</p>

<p>&lt;/head&gt;</p>

<p>&lt;body&gt;</p>

<p>&lt;form:form action="processForm" modelAttribute="student"&gt;</p>

<p>First name: &lt;form:input path="firstName" /&gt;</p>

<p>&lt;br&gt;&lt;br&gt;</p>

<p>Last name: &lt;form:input path="lastName" /&gt;</p>

<p>&lt;br&gt;&lt;br&gt;</p>

<p>Country:</p>

<p>&lt;form:select path="country"&gt;</p>

<p>&lt;form:options items="$ {theCountryOptions}" /&gt;</p>

<p>&lt;/form:select&gt;</p>

<p>&lt;br&gt;&lt;br&gt;</p>

<p>Favorite Language:</p>

<p>Java &lt;form:radiobutton path="favoriteLanguage" value="Java" /&gt;</p>

<p>C# &lt;form:radiobutton path="favoriteLanguage" value="C#" /&gt;</p>

<p>PHP &lt;form:radiobutton path="favoriteLanguage" value="PHP" /&gt;</p>

<p>Ruby &lt;form:radiobutton path="favoriteLanguage" value="Ruby" /&gt;</p>

<p>&lt;br&gt;&lt;br&gt;</p>

<p>Operating Systems:</p>

<p>Linux &lt;form:checkbox path="operatingSystems" value="Linux" /&gt;</p>

<p>Mac OS &lt;form:checkbox path="operatingSystems" value="Mac OS" /&gt;</p>

<p>MS Windows &lt;form:checkbox path="operatingSystems" value="MS Window" /&gt;</p>

<p>&lt;br&gt;&lt;br&gt;</p>

<p>&lt;input type="submit" value="Submit" /&gt;</p>

<p>&lt;/form:form&gt;</p>

<p>&lt;/body&gt;</p>

<p>&lt;/html&gt;</p><p><br></p>
        </div>
    </div>
</div>
</div>
</div>
 </body>
</html>