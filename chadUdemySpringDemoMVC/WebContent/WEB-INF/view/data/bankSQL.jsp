<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resources/css/main.css">
<title>bankSQL</title>
</head>
<body>
<div class="main">
<a href="${pageContext.request.contextPath}">main1</a>
<hr>
<script src="//pastebin.com/embed_js/g1Ataj6d"></script>
<p>create database if not exists bank1;</p>
<p>use bank1;</p>
<p>#drop database bank1;</p>
<p>create table if not exists client</p>
<p>(</p>
<p>idClient int(11) not null auto_increment primary key,</p>
<p>FirstName varchar(45),</p>
<p>LastName varchar(45),</p>
<p>Education varchar(45),</p>
<p>Pasport varchar(45),</p>
<p>City varchar(45),</p>
<p>Age int,</p>
<p>Department_idDepartment int(11)</p>
<p>);</p>

<p>create table if not exists department</p>
<p>(</p>
<p>idDepartment int(11) not null auto_increment primary key,</p>
<p>DepartmentCity varchar(45),</p>
<p>CountIdWorkers int(11)</p>
<p>);</p>

<p>create table if not exists aplication</p>
<p>(</p>
<p>idAplication int(11) not null auto_increment primary key,</p>
<p>Sum int(11),</p>
<p>CreditState varchar(45),</p>
<p>Curency varchar(45),</p>
<p>client_idClient int(11)</p>
<p>);</p>
<p>#drop table aplication;</p>

<p>insert into client (FirstName, LastName, Education, Pasport, City, Age, Department_idDepartment) </p>
<p>values</p>
<p>('pasha','blvag','full','21321321','Lviv',11,2),</p>
<p>('masha','c1lvag','2full','2211321321','Rivne',11,3),</p>
<p>('vasya','alvag','full','21321321','Rivne',11,4),</p>
<p>('petya','d1lvag','2full','2211321321','Lviv',11,4),</p>
<p>('ina','flvag','full','21321321','Rivne',11,5),</p>
<p>('natasha','g1lvag','2full','2211321321','Kyiv',11,1),</p>
<p>('oleg','hlvag','full','21321321','Lviv',11,2),</p>
<p>('oleg','u1lvag','2full','2211321321','Lviv',11,3),</p>
<p>('motor','alvag','full','213g21321','Lviv',11,5),</p>
<p>('ambar','glvag','full','2132f1321','Lviv',21,5),</p>
<p>('abrlvag','u1lvag','2full','22d11321321','Kyiv',11,1),</p>
<p>('sergei','jlvag','full','213213a21','Lviv',31,2),</p>
<p>('sergei','1lvag','2full','22a11321321','Kyiv',11,3),</p>
<p>('andrei','olvag','full','2132f1321','Rivne',11,5),</p>
<p>('petro','plvag','full','213d21321','Lviv',11,5),</p>
<p>('vasil','q1lvag','2full','e2211321321','Lviv',11,1),</p>
<p>('galant','wlvag','full','21321a321','Rivne',41,2),</p>
<p>('ira','1lvag','2full','221s1321321','Rivne',11,3),</p>
<p>('oles','alvag','full','21321g321','Rivne',51,5),</p>
<p>('miroslav','blvffffffag','full','21321321','Rivne',11,5),</p>
<p>('olga','c1lvag','2full','2211321321','Rivne',11,1),</p>
<p>('yulia','lvag','full','21321321','Kyiv',71,2),</p>
<p>('dima','1lvag','2full','2211321321','Lviv',11,3),</p>
<p>('dmitro','lvag','full','21321321','Rivne',20,5),</p>
<p>('artur','1lvag','2full','2211321321','Kyiv',22,1),</p>
<p>('kolya','1lvag','2full','2132321321','Kyiv',25,5);</p>

<p>#drop table client;</p>

<p>insert into aplication (Sum,Curency, client_idClient, CreditState)</p>
<p>values</p>
<p>(220,'baks',1,'Refunded'),</p>
<p>(1220,'baks',2,'Refunded'),</p>
<p>(2220,'baks',1,'Not refunded'),</p>
<p>(3220,'baks',3,'Not refunded'),</p>
<p>(4220,'babaks',1,'Not refunded'),</p>
<p>(220,'baks',11,'Not refunded'),</p>
<p>(1220,'baks',12,'Refunded'),</p>
<p>(2220,'baks',15,'Refunded'),</p>
<p>(3220,'baks',13,'Not refunded'),</p>
<p>(4220,'babaks',8,'Refunded'),</p>
<p>(220,'baks',7,'Not refunded'),</p>
<p>(15220,'baks',12,'Refunded'),</p>
<p>(260,'baks',11,'Refunded'),</p>
<p>(3220,'baks',13,'Not refunded'),</p>
<p>(4220,'babaks',15,'Refunded'),</p>
<p>(220,'baks',1,'Refunded'),</p>
<p>(70,'baks',2,'Not refunded'),</p>
<p>(2220,'baks',1,'Refunded'),</p>
<p>(30,'baks',3,'Not refunded'),</p>
<p>(4220,'babaks',1,'Not refunded'),</p>
<p>(220,'baks',1,'Not refunded'),</p>
<p>(1220,'baks',2,'Refunded'),</p>
<p>(2220,'baks',1,'Refunded'),</p>
<p>(3220,'baks',3,'Refunded'),</p>
<p>(4220,'babaks',1,'Refunded'),</p>
<p>(220,'baks',1,'Not refunded'),</p>
<p>(1220,'baks',2,'Not refunded'),</p>
<p>(2220,'baks',1,'Not refunded'),</p>
<p>(120,'baks',3,'Not refunded'),</p>
<p>(50,'babaks',1,'Not refunded');</p>

<p>insert into department(DepartmentCity, CountIdWorkers)</p>
<p>values</p>
<p>('Kiev', 355),</p>
<p>('Lviv',200),</p>
<p>('Rivne', 550),</p>
<p>('Lviv', 200),</p>
<p>('Kiev',400);</p>
<p>#drop table department;</p>

<p>alter table aplication add constraint bbb</p>
<p>foreign key (client_idClient) references client(idClient);</p>

<p>alter table client add constraint aaa</p>
<p>foreign key (Department_idDepartment) references department(idDepartment);</p>

<p>/*1.	+select all clients.*/</p>
<p>select * from client</p>
<p>join department on client.Department_idDepartment = department.idDepartment</p>
<p>join aplication on client.idClient = aplication.client_idClient;</p>

<p>/*2.	+select by departmentcity.*/</p>
<p>select * from department where DepartmentCity = 'Lviv';</p>

<p>select * from client </p>
<p>join department</p>
<p>where DepartmentCity ='Lviv';</p>

<p>select * from client</p>
<p>join department on client.Department_idDepartment = department.idDepartment</p>
<p>join aplication on client.idClient = aplication.client_idClient </p>
<p>where DepartmentCity = 'Lviv';</p>

<p>/*3.	select by education and sort by lastname.*/</p>
<p>select * from client where Education = 'full' order by Lastname;</p>

<p>select * from client</p>
<p>join department on client.Department_idDepartment = department.idDepartment</p>
<p>join aplication on client.idClient = aplication.client_idClient </p>
<p>where Education = 'full' order by LastName;</p>

<p>select Distinct FirstName,LastName from client</p>
<p>join department on client.Department_idDepartment = department.idDepartment</p>
<p>join aplication on client.idClient = aplication.client_idClient </p>
<p>where Education = 'full' order by LastName;</p>

<p>/*4.	+sort in descended(back) order of idAplication table and show last 5.*/</p>
<p>select * from aplication order by idAplication desc limit 5;</p>

<p>/*5.	+show all clients with lastname starts with b or a.*/</p>
<p>select * from client where LastName like 'b%' or LastName like 'a%';</p>

<p>/*6.	+show clients from city.*/</p>
<p>select * from client</p>
<p>join department</p>
<p>on client.Department_idDepartment = department.idDepartment where </p>
<p>DepartmentCity = 'Kiev';</p>

<p>select  * from client</p>
<p>join department on client.Department_idDepartment = department.idDepartment</p>
<p>join aplication on client.idClient = aplication.client_idClient </p>
<p>where DepartmentCity = 'Kiev';</p>

<p>/*7.	+show clients and passport data grouped by firstname.*/</p>
<p>select FirstName, LastName, Age, City, Pasport from client order by FirstName;</p>

<p>/*8.	+show clients wih credit bigger than 2000.*/</p>
<p>select idClient,FirstName,LastName,Age,City,Sum from client </p>
<p>join aplication </p>
<p>on client.idClient = aplication.client_idClient where Sum > 2000 order </p>
<p>by idCLient;</p>

<p>select Distinct idClient,FirstName,LastName,Age,City from client </p>
<p>join aplication </p>
<p>on client.idClient = aplication.client_idClient where Sum > 2000 order </p>
<p>by idCLient;</p>

<p>/*9.	+count clients of all cities and of selected city.*/</p>
<p>select count(idClient) from client</p>
<p>join department</p>
<p>on department.idDepartment=client.Department_idDepartment;</p>

<p>select count(idClient)from client</p>
<p>join department</p>
<p>on department.idDepartment=client.Department_idDepartment where </p>
<p>DepartmentCity = 'Lviv';</p>

<p>/*10.	+show max credit sum for every client.*/</p>
<p>select idClient,FirstName,LastName,count(idClient)aplications,max(Sum),</p>
<p>Sum,CreditState from client</p>
<p>join aplication</p>
<p>on aplication.client_idClient=client.idClient group by idClient order </p>
<p>by idClient;</p>

<p>/*11. +count credit aplication for all clients.*/</p>
<p>select idClient,FirstName,LastName,count(idClient)aplications,Sum,CreditState </p>
<p>from aplication</p>
<p>join client</p>
<p>on client.idClient=aplication.Client_idClient group by idClient order </p>
<p>by idClient;</p>

<p>/*12.	+show max and min credit.*/</p>
<p>select max(sum),min(sum) from aplication</p>
<p>join client</p>
<p>on client.idClient=aplication.Client_idClient;</p>

<p>/*13.	+count credits for clients with high education.*/</p>
<p>select count(idClient)aplications from aplication</p>
<p>join client</p>
<p>on client.idClient=aplication.Client_idClient where Education='full';</p>

<p>/*14.	+show client with max average credit sum.*/</p>
<p>select idClient,FirstName,LastName,count(idClient)aplications,max(Sum),</p>
<p>avg(Sum)avg,Sum from client</p>
<p>join aplication</p>
<p>on aplication.client_idClient=client.idClient group by idClient order by </p>
<p>avg desc limit 1;</p>

<p>/*15.	show department with max credit sum*/</p>
<p>select sum(Sum),DepartmentCity,count(idAplication) from client</p>
<p>join department</p>
<p>on department.idDepartment=client.Department_idDepartment</p>
<p>join aplication</p>
<p>on aplication.Client_idClient=client.idClient group by idDepartment;</p>

<p>/*16.	show department with max credit.*/</p>
<p>select max(Sum)max,DepartmentCity from client</p>
<p>join department</p>
<p>on department.idDepartment=client.Department_idDepartment</p>
<p>join aplication</p>
<p>on aplication.Client_idClient=client.idClient group by idDepartment order </p>
<p>by max desc limit 1;</p>

<p>/*17.	set 6000 credit to all clients with high education.*/</p>
<p>update client join aplication on client.idClient = aplication.client_idClient</p>
<p>set Sum = 6000</p>
<p>where Education ='full';</p>

<p>select * from aplication</p>
<p>join client on client.idClient=aplication.Client_idClient order by Sum;</p>

<p>select * from aplication</p>
<p>join client on aplication.Client_idClient=client.idClient order by Sum;</p>

<p>/*18.	set city Kiev to all users with departmentCity = Kiev.*/</p>
<p>update client</p>
<p>join department </p>
<p>on department.idDepartment=client.Department_idDepartment</p>
<p>set City='Kiev' where DepartmentCity='Kiev';</p>

<p>select * from client</p>
<p>join department</p>
<p>on department.idDepartment=client.Department_idDepartment order by City;</p>

<p>select * into outfile '1.sql' from client</p>
<p>join department</p>
<p>on department.idDepartment=client.Department_idDepartment order by City;</p>


<p>/*19.	delete all not refunded credits.*/</p>
<p>select * from aplication</p>
<p>where CreditState='Refunded';</p>

<p>delete from aplication</p>
<p>where CreditState='Refunded';</p>

<p>select * from aplication;</p>

<p>/*20.	delete credits for clients with vowel on second place in the lastName.*/</p>
<p>delete aplication from aplication</p>
<p>join client on client.idClient=aplication.Client_idClient where LastName </p>
<p>like'a%' or LastName like'c%';</p>

<p>/*truncate table aplication;*/</p>

<p>/*select departments from Lviv city with credit sum > 5000*/</p>
<p>select sum(Sum),idDepartment from client</p>
<p>join department on department.idDepartment=client.Department_idDepartment</p>
<p>join aplication on aplication.client_idClient=client.idClient </p>
<p>where DepartmentCity='Lviv' group by Department_idDepartment </p>
<p>having sum(Sum)>7000;</p>

<p>/*+select clients with credits refunded more than 5000*/</p>
<p>select sum(Sum),FirstName,LastName from client</p>
<p>join department on department.idDepartment=client.Department_idDepartment</p>
<p>join aplication on aplication.client_idClient=client.idClient  where </p>
<p>CreditState='Refunded' group by idClient having sum(Sum)>5000;</p>

<p>select sum,FirstName,LastName,CreditState from client</p>
<p>join department on department.idDepartment=client.Department_idDepartment</p>
<p>join aplication on aplication.client_idClient=client.idClient  where </p>
<p>CreditState='Refunded' order by idClient,CreditState;</p>

<p>/* select max not refunded credit.*/</p>
<p>select sum,FirstName,LastName,CreditState from client</p>
<p>join department on department.idDepartment=client.Department_idDepartment</p>
<p>join aplication on aplication.client_idClient=client.idClient  where </p>
<p>CreditState='Not Refunded' group by idClient order by sum desc limit 1;</p>

<p>/*select client with smallest credit*/</p>
<p>select sum(Sum),FirstName,LastName,idClient,count(idAplication) from client</p>
<p>join department on department.idDepartment=client.Department_idDepartment</p>
<p>join aplication on aplication.client_idClient=client.idClient group by</p>
<p> idClient order by sum(Sum) limit 1;</p>

<p>/*selects credits which bigger than average credit*/</p>
<p>select sum,FirstName,LastName,idClient,idAplication from client</p>
<p>join department on department.idDepartment=client.Department_idDepartment</p>
<p>join aplication on aplication.client_idClient=client.idClient where sum></p>
<p>(select avg(sum)from aplication);</p>

<p>/*select all client from city where is client with max credit*/</p>
<p>select FirstName,LastName,City,idClient from client where City = (select </p>
<p>City from client</p>
<p>join department on department.idDepartment=client.Department_idDepartment</p>
<p>join aplication on aplication.client_idClient=client.idClient  group</p>
<p> by client_idClient having count(idAplication)  order </p>
<p> by count(idAplication) desc limit 1);</p>


</div>
 </body>
</html>