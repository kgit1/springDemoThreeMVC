<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resources/css/main.css">
<title>SpringHibernateStart</title>
</head>
<body>
<div class="main">
<a href="${pageContext.request.contextPath}">main1</a>
<hr>
<p>create File-> New-> Dynamic Web Project</p>
<p>WEB-INF-> lib-> put mysql-connector-java-5.1.39-bin.jar</p>
<p>Properties-> Java Build Path-> add jar</p>
<p></p>
<hr>
<hr>
<p>Java Resources-> new package com.luv2code.testdb</p>
<p>to test db connection create new servlet TestDbServlet</p>
<p>Next->Next-> uncheck Constructors from superclass and doPost</p>
<p>in servlet add -> import java.sql.*;</p>
<script src="//pastebin.com/embed_js/mCus6vQm"></script>
<p>run servlet -> Run on Server</p>  
<hr>
<p>WEB-INF-> put spring-mvc-crud-demo-servlet.xml abd web.xml to WEB-INF folder</p>
<p>WEB-INF-> lib-> put javax.servlet.jsp.jstl-1.2.1.jar</p>
<p>					javax.servlet.jsp.jstl-api-1.2.1.jar</p>
<p>					commons-logging-1.2.jar</p>
<p>					latest spring libs</p>
<p>					latest hibernate libs from required					</p>
<p>					and (c3p0 - database connection pooling)</p>
<p>					from optional->c3p0</p>
<hr>
<p>go to spring-mvc-crud-demo-servlet.xml	and				</p>
<p>define database dataSource/connection pool</p>
<p>setup hibernate session factory</p>
<p>setup hibernate transaction manager</p>
<p>enable configuration of transactional annotations</p>
<hr>
<p>create package controller</p>
<p>create class CustomerController without main</p>
<script src="//pastebin.com/embed_js/mnwYB4in"></script>
<hr>
<p>add to spring-mvc-crud-demo-servlet.xml </p>
<p><mvc:resources location="/resources/" mapping="/resources/**"></mvc:resources></p>
<p>to map folder where images and css will be stored </p>
<p>create folder view in WEB-INF folder</p>
<p>create jsp file -> list-customers</p>
<p>put inside body - List Customers - coming soon....</p>
<p>run project on server</p>
<p>append "customer/list" to address </p>
<p>and check if it works</p>
<hr>
<p>create package for DAO -DATA ACCESS OBJECT</p>
<p>create interface CustomerDAO</p>
<script src="//pastebin.com/embed_js/WSpYgRVG"></script>
<p>create implementation CustomerDAOImpl</p>
<script src="//pastebin.com/embed_js/5DNRgSiJ"></script>
<hr>
<p>change our CustomerController to work through DAO</p>
<script src="//pastebin.com/embed_js/97r3UUaZ"></script>
<hr>
<p> add jstl tags library to our jsp </p>
<p>add table to hold and show our data from model from model in controllers method</p>
<p>and populate table with data usinf foreach</p>
<script src="//pastebin.com/embed_js/PCKXvCjH"></script>
<hr>
<p>web.xml file</p>
<script src="//pastebin.com/embed_js/Si9mHFZx"></script>
<hr>
<p>spring configuration file</p>
<script src="//pastebin.com/embed_js/XhZNU0v4"></script>
<hr>
<p>create Service layer</p>
<img src="${pageContext.request.contextPath}/resources/images/how spring mvc.jpg">
<p>create package for Service</p>
<p>Service - layer between controller and DAO</p>
<p>can add some business logic or integrate together data from</p> 
<p>different sources</p>   
<script src="//pastebin.com/embed_js/78dS5V4i"></script>
<script src="//pastebin.com/embed_js/BRA37Qj4"></script>
<p>change DAOImpl</p>
<script src="//pastebin.com/embed_js/8N34dgJT"></script>
<p>change controller</p>
<script src="//pastebin.com/embed_js/1qCHKepb"></script>
<hr>  
<hr>
<p>add "add customer" button to jsp</p>
<script src="//pastebin.com/embed_js/Wz8dpRsn"></script>
<p>add mapping to Controller</p>
<script src="//pastebin.com/embed_js/DR35f140"></script>
<p>add new jsp page for addButton request</p>
<script src="//pastebin.com/embed_js/J4ddAW0N"></script>
<p>add mapping to save customer</p>
<p>CustomerController</p>
<script src="//pastebin.com/embed_js/NJqASJcQ"></script>
<p>then add our method</p>
<p>Service->ServiceImpl->DAO->DAOImpl</p>
<script src="//pastebin.com/embed_js/a87j8jUE"></script>
<script src="//pastebin.com/embed_js/rZBvZEpN"></script>
<script src="//pastebin.com/embed_js/xQUa9UJ5"></script>
<p>@Override</p>
<p>	public void saveCustomer(Customer theCustomer) {</p>
<p>		//get current hibernate session</p>
<p>		Session curentSession = sessionFactory.getCurrentSession();</p>
<p>		
<p>		//save the customer</p>
<p>		curentSession.save(theCustomer);</p>
<p>	}</p>
</div>
 </body>
</html>