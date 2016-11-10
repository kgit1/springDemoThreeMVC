<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resources/css/main.css">
<title>DZ hibernate</title>
</head>
<body>
<div class="main">
<a href="${pageContext.request.contextPath}">main1</a>
<hr>
<script src="//pastebin.com/embed_js/6YfgtKm1"></script>
<p>package com.luv2code.hibernate.demo.dz;</p>

<p>import java.util.List;</p>

<p>import org.hibernate.HibernateException;</p>
<p>import org.hibernate.Session;</p>
<p>import org.hibernate.SessionFactory;</p>
<p>import org.hibernate.cfg.Configuration;</p>

<p>import com.luv2code.hebernate.demo.entity.Employee;</p>

<p>public class MainApp {</p>

<p>	public static void main(String[] args) {</p>
<p>		SessionFactory factory = new Configuration().configure()</p>
<p>				.addAnnotatedClass(Employee.class).buildSessionFactory();</p>

<p>		Session session = factory.getCurrentSession();</p>

<p>		try {</p>
<p>			session.beginTransaction();</p>

<p>			// create employees</p>
<p>			Employee employee1 = new Employee("Catte", "Wildburn", "Seagul");</p>
<p>			Employee employee2 = new Employee("Batter", "Buren", "Krista");</p>
<p>			Employee employee3 = new Employee("Javax", "Pebole", "S1");</p>
<p>			Employee employee4 = new Employee("Orlando", "Blum", "Holly");</p>

<p>			// save to database</p>
<p>			session.save(employee1);</p>
<p>			session.save(employee2);</p>
<p>			session.save(employee3);</p>
<p>			session.save(employee4);</p>

<p>			// create tempEmployee and put inside employee from database</p>
<p>			// by id(primary key)</p>
<p>			Employee tempEmployee = session.get(Employee.class, 4);</p>

<p>			// print result</p>
<p>			System.out.println(tempEmployee);</p>

<p>			// create tempList of employees and put inside result of</p>
<p>			// query by company name</p>
<p>			List<Employee> tempList = session</p>
<p>					.createQuery("from Employee e where e.company='S1'")</p>
<p>					.getResultList();</p>

<p>			// print results</p>
<p>			System.out.println("ResultList");</p>
<p>			for (Employee employee : tempList) {</p>
<p>				System.out.println(employee);</p>
<p>			}

<p>			// delete object in database by id</p>
<p>			session.createQuery("delete Employee where id=5").executeUpdate();</p>

<p>			session.getTransaction().commit();</p>
<p>		} catch (HibernateException e) {</p>
<p>			e.printStackTrace();</p>
<p>		} finally {</p>
<p>			factory.close();</p>
<p>		}</p>

<p>	}</p>

<p>}</p>
<p>package com.luv2code.hebernate.demo.entity;</p>

<p>import javax.persistence.Column;</p>
<p>import javax.persistence.Entity;</p>
<p>import javax.persistence.GeneratedValue;</p>
<p>import javax.persistence.GenerationType;</p>
<p>import javax.persistence.Id;</p>
<p>import javax.persistence.Table;</p>

<p>@Entity</p>
<p>@Table(name="employee")</p>
<p>public class Employee {</p>
<p>	@Id</p>
<p>	@GeneratedValue(strategy=GenerationType.IDENTITY)</p>
<p>	@Column(name="id")</p>
<p>	private int id;</p>
	
<p>	@Column(name="first_name")</p>
<p>	private String firstName;</p>
	
<p>	@Column(name="last_name")</p>
<p>	private String lastName;</p>
	
<p>	@Column(name="company")</p>
<p>	private String company;</p>

<p>	public Employee() {</p>
<p>	}</p>

<p>	public Employee(String firstName, String lastName, String company) {</p>
<p>		this.firstName = firstName;</p>
<p>		this.lastName = lastName;</p>
<p>		this.company = company;</p>
<p>	}</p>

<p>	public int getId() {</p>
<p>		return id;</p>
<p>	}</p>

<p>	public void setId(int id) {</p>
<p>		this.id = id;</p>
<p>	}</p>

<p>	public String getFirstName() {</p>
<p>		return firstName;</p>
<p>	}</p>

<p>	public void setFirstName(String firstName) {</p>
<p>		this.firstName = firstName;</p>
<p>	}</p>

<p>	public String getLastName() {</p>
<p>		return lastName;</p>
<p>	}</p>

<p>	public void setLastName(String lastName) {</p>
<p>		this.lastName = lastName;</p>
<p>	}</p>

<p>	public String getCompany() {</p>
<p>		return company;</p>
<p>	}</p>

<p>	public void setCompany(String company) {</p>
<p>		this.company = company;</p>
<p>	}</p>

<p>	@Override</p>
<p>	public String toString() {</p>
<p>		return "Employee [id=" + id + ", firstName=" + firstName + ", lastName="</p>
<p>				+ lastName + ", company=" + company + "]";</p>
<p>	}	</p>

<p>}</p>

</div>
 </body>
</html>