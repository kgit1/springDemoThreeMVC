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
<p>delete code inside doGet method to replace with our own</p>
<p>add inside doGet method</p>
<p>//setup connection variables</p>
<p>String user = "springstudent";</p>
<p>String password = "springuser";</p>
<p></p>
<p>String jdbcUrl = "jdbc:mysql://localhost/web_customer_tracker?useSSL=false";</p>
<p>String driver = "com.mysql.jdbc.Driver";</p>
<p></p>
<p>//get connection</p>
	<p>	try{</p>
<p>			PrintWriter out = response.getWriter();</p>
<p>			</p>
<p>			out.println("Connecting to database: " + jdbcUrl);</p>
<p>			</p>
<p>			Class.forName(driver);</p>
<p>			</p>
<p>			Connection conn = DriverManager.getConnection(jdbcUrl, user, password);</p>
<p>			</p>
<p>			out.println();</p>
<p>			out.println("SUCCESS!!!");</p>
<p>			conn.close();</p>
<p>		}catch(Exception e){</p>
<p>			e.printStackTrace();</p>
<p>			throw new ServletException(e);</p>
<p>		}</p>
<p>run servlet -> Run on Server</p>  
<hr>
WEB-INF-> put spring-mvc-crud-demo-servlet.xml abd web.xml to WEB-INF folder
WEB-INF-> lib-> put javax.servlet.jsp.jstl-1.2.1.jar
					javax.servlet.jsp.jstl-api-1.2.1.jar
					commons-logging-1.2.jar
					latest spring libs
					latest hibernate libs from required					
					and (c3p0 - database connection pooling)
					from optional->c3p0
<hr>		
go to spring-mvc-crud-demo-servlet.xml	and				
define database dataSource/connection pool
setup hibernate session factory
setup hibernate transaction manager
enable configuration of transactional annotations
<hr>
create package controller
create class CustomerController without main
@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@RequestMapping("/list")
	public String listCustomers(Model theModel){		
		return "list-customers";		
	}
}
<hr>
add to spring-mvc-crud-demo-servlet.xml 
<mvc:resources location="/resources/" mapping="/resources/**"></mvc:resources>
to map folder where images and css will be stored 
create folder view in WEB-INF folder
create jsp file -> list-customers
put inside body - List Customers - coming soon....
put <img src="${pageContext.request.contextPath}/resources/images/how spring mvc.jpg">
run project on server
append "customer/list" to address 
and check if it works
<hr>
	
   
<hr>  
</div>
 </body>
</html>