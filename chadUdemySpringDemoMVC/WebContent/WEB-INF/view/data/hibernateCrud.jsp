<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resources/css/main.css">
<title>CRUD hibernate</title>
</head>
<body>
<div class="main">
<a href="${pageContext.request.contextPath}">main1</a>
<hr>
<script src="//pastebin.com/embed_js/wSEs7M4S"></script>
<p>package com.luv2code.hibernate.demo;</p>

<p>import java.util.ArrayList;</p>
<p>import java.util.List;</p>

<p>import org.hibernate.HibernateException;</p>
<p>import org.hibernate.Session;</p>
<p>import org.hibernate.SessionFactory;</p>
<p>import org.hibernate.cfg.Configuration;</p>

<p>import com.luv2code.hibernate.demo.entity.Student;</p>

<p>public class HibernateCRUDMethods {</p>

<p>		public static void main(String[] args) {</p>
<p>		// class SessionFactory</p>
<p>		// reads the hibernate config file</p>
<p>		// creates Session object</p>
<p>		// heavy-weight object</p>
<p>		// only create once in your app</p>

<p>		// Session </p>
<p>		// wraps a JDBC connection</p>
<p>		// main object used to save\retrieve objects</p>
<p>		// short-lived object</p>
<p>		// retrieved from Seccion factory</p>

<p>		// create session factory</p>
<p>		// if configure() is empty -</p>
<p>		// will use default "hibernate.cfg.xml" from src root</p>
<p>		SessionFactory factory = new Configuration()</p>
<p>				.configure("hibernate.cfg.xml").addAnnotatedClass(Student.class)</p>
<p>				.buildSessionFactory();</p>

<p>		// create session</p>
<p>		Session session = factory.getCurrentSession();</p>

<p>		try {</p>
<p>			// use the session object to save java object</p>

<p>			// create a student object</p>
<p>			System.out.println("Creating new student object...");</p>
<p>			Student tempStudent = new Student("Daffy", "Duck",</p>
<p>					"daffy@luv2code.com");</p>

<p>			// start a transaction</p>
<p>			session.beginTransaction();</p>

<p>			// save the student object</p>
<p>			System.out.println("Saving the student...");</p>
<p>			System.out.println(tempStudent);</p>
<p>			session.save(tempStudent);</p>

<p>			// commit transaction</p>
<p>			session.getTransaction().commit();</p>

<p>			// new code</p>
<p>			// read object</p>

<p>			// find out the student's id: primary key</p>
<p>			System.out.println(</p>
<p>					"Saved student. Generated id: " + tempStudent.getId());</p>

<p>			// get a new session and start transaction</p>
<p>			session = factory.getCurrentSession();</p>
<p>			session.beginTransaction();</p>

<p>			// retrieve student based on the id: primary key</p>
<p>			System.out.println(</p>
<p>					"\nGetting student with id: " + tempStudent.getId());</p>

<p>			Student myStudent = session.get(Student.class, tempStudent.getId());</p>

<p>			System.out.println("Get complete: " + myStudent);</p>

<p>			// commit the transaction</p>
<p>			session.getTransaction().commit();</p>

<p>			// System.out.println("And winner is: " + readById(factory, 3000));</p>

<p>			saveListToDb(factory, populateList());</p>
<p>			System.out.println("=====================");</p>
<p>			printAllRows(factory, "Student");</p>

<p>			// System.out.println("Truncate==========");</p>
<p>			// truncateTable(factory, "Student");</p>

<p>			System.out.println("==========");</p>
<p>			printAllRows(factory, "Student");</p>

<p>			//rewriteTable(factory, "Student");</p>

<p>			updateStudentById(factory, 14);</p>
			
<p>			updateStudentAllEmail(factory);</p>
			
<p>			//deleteStudentAll(factory);</p>

<p>			System.out.println("Done!");</p>
<p>		} finally {</p>
<p>			factory.close();</p>
<p>		}</p>
<p>	}</p>

<p>	static Integer saveToDb(SessionFactory factory, Student student) {</p>
<p>		// if you use sessionFactory.getCurrentSession(), you'll obtain a</p>
<p>		// "current session" which is bound to the lifecycle of</p>
<p>		// the transaction and will be automatically flushed and closed</p>
<p>		// when the transaction ends (commit or rollback).</p>
<p>		// if you decide to use sessionFactory.openSession(), you'll have</p>
<p>		// to manage the session yourself and to flush and close</p>
<p>		// it "manually".</p>
<p>		Session session = factory.getCurrentSession();</p>
<p>		Integer id = null;</p>
<p>		try {</p>
<p>			session.beginTransaction();</p>
<p>			id = (Integer) session.save(student);</p>
<p>			session.getTransaction().commit();</p>
<p>		} catch (HibernateException e) {</p>
<p>		}</p>
<p>		return id;</p>
<p>	}</p>

<p>	static Student readById(SessionFactory factory, int id) {</p>
<p>		Session session = factory.getCurrentSession();</p>
<p>		Student student = null;</p>
<p>		try {</p>
<p>			session.beginTransaction();</p>
<p>			student = session.get(Student.class, id);</p>
<p>			session.getTransaction().commit();</p>
<p>		} catch (HibernateException e) {</p>
<p>			e.printStackTrace();</p>
<p>		}</p>
<p>		return student;</p>
<p>	}</p>

<p>	static List<Student> readAllRows(SessionFactory factory, String table) {</p>
<p>		Session session = factory.getCurrentSession();</p>
<p>		List<Student> list = new ArrayList<>();</p>
<p>		try {</p>
<p>			session.beginTransaction();</p>
<p>			list = session.createQuery("from " + table).getResultList();</p>
<p>			session.getTransaction().commit();</p>
<p>		} catch (HibernateException e) {</p>
<p>			e.printStackTrace();</p>
<p>		}</p>
<p>		return list;</p>
<p>	}</p>

<p>	static void printAllRows(SessionFactory factory, String table) {</p>
<p>		Session session = factory.getCurrentSession();</p>
<p>		List<Student> list = new ArrayList<>();</p>
<p>		try {</p>
<p>			session.beginTransaction();</p>
<p>			list = session.createQuery("from " + table).getResultList();</p>
<p>			for (Student student : list) {</p>
<p>				System.out.println(student);</p>
<p>			}</p>
<p>			session.getTransaction().commit();</p>
<p>		} catch (HibernateException e) {</p>
<p>			e.printStackTrace();</p>
<p>		}</p>
<p>	}</p>

<p>	static void truncateTable(SessionFactory factory, String table) {</p>
<p>		Session session = factory.getCurrentSession();</p>
<p>		try {</p>
<p>			session.beginTransaction();</p>
<p>			session.createSQLQuery("truncate table Student").executeUpdate();</p>
<p>			session.getTransaction().commit();</p>
<p>		} catch (HibernateException e) {</p>
<p>			e.printStackTrace();</p>
<p>		}</p>
<p>	}</p>

<p>	static void saveListToDb(SessionFactory factory, List<Student> list) {</p>
<p>		Session session = factory.getCurrentSession();</p>
<p>		// list = populateList();</p>
<p>		try {</p>
<p>			session.beginTransaction();</p>
<p>			for (Student student : list) {</p>
<p>				session.save(student);</p>
<p>			}</p>
<p>			session.getTransaction().commit();</p>
<p>		} catch (HibernateException e) {</p>
<p>			e.printStackTrace();</p>
<p>		}</p>
<p>	}</p>

<p>	static void rewriteTable(SessionFactory factory, String table) {</p>
<p>		List<Student> list = readAllRows(factory, table);</p>
<p>		truncateTable(factory, table);</p>
<p>		System.out.println("STUDENT BEFORE");</p>
<p>		System.out.println("*********************************************");</p>
<p>		for (Student student : list) {</p>
<p>			System.out.println(student);</p>
<p>			// student.setId(0);</p>
<p>			System.out.println(student);</p>
<p>		}</p>
<p>		System.out.println("STUDENTS AFTER");</p>
<p>		System.out.println("*********************************************");</p>
<p>		printAllRows(factory, table);</p>
<p>		saveListToDb(factory, list);</p>
<p>		list = readAllRows(factory, table);</p>
<p>		System.out.println("STUDENTS AFTER AFTER");</p>
<p>		System.out.println("*********************************************");</p>
<p>		printAllRows(factory, table);</p>
<p>	}</p>

<p>	public static List<Student> readByName(Session session, String name) {</p>
<p>		List<Student> theStudents = session</p>
<p>				.createQuery("from Student s where s.firstName='" + name + "'")</p>
<p>				.getResultList();</p>
<p>		return theStudents;</p>
<p>	}</p>

<p>	public static List<Student> readByNameOrEmail(Session session, String name,</p>
<p>			String email) {</p>
<p>		List<Student> theStudents = session</p>
<p>				.createQuery("from Student s where s.firstName='" + name</p>
<p>						+ "' or s.email='" + email + "'")</p>
<p>				.getResultList();</p>
<p>		return theStudents;</p>
<p>	}</p>

<p>	public static List<Student> readByNameAndEmailWildcard(Session session,</p>
<p>			String name, String emailWild) {</p>
<p>		List<Student> theStudents4 = session</p>
<p>				.createQuery("from Student s where s.firstName='" + name</p>
<p>						+ "' or s.email like '" + emailWild + "'")</p>
<p>				.getResultList();</p>
<p>		return theStudents4;</p>
<p>	}</p>

<p>	static void updateStudentAllEmail(SessionFactory factory) {</p>
<p>		Session session = factory.getCurrentSession();</p>
<p>		session.beginTransaction();</p>
<p>		session.createQuery("update Student set email='foo@yahoo.com'")</p>
<p>				.executeUpdate();</p>
<p>		session.getTransaction().commit();</p>
<p>	}</p>

<p>	static void updateStudentById(SessionFactory factory, int id) {</p>
<p>		Session session = factory.getCurrentSession();</p>
<p>		session.beginTransaction();</p>
<p>		session.createQuery(</p>
<p>				"update Student set firstName='Patric' where id=" + id)</p>
<p>				.executeUpdate();</p>
<p>		session.getTransaction().commit();</p>
<p>	}</p>

<p>	static void deleteStudentById(SessionFactory factory, int id) {</p>
<p>		Session session = factory.getCurrentSession();</p>
<p>		session.beginTransaction();</p>
<p>		session.createQuery("delete from Student where id=" + id)</p>
<p>				.executeUpdate();</p>
<p>		session.getTransaction().commit();</p>
<p>	}</p>
	
<p>	static void deleteStudentAll(SessionFactory factory) {</p>
<p>		Session session = factory.getCurrentSession();</p>
<p>		session.beginTransaction();</p>
<p>		session.createQuery("delete Student")</p>
<p>				.executeUpdate();</p>
<p>		session.getTransaction().commit();</p>
<p>	}</p>

<p>	static List<Student> populateList() {</p>
<p>		List<Student> list = new ArrayList<Student>();</p>
<p>		list.add(new Student("Daffy", "Duck", "daffy@luv2code.com"));</p>
<p>		list.add(new Student("Paul", "Walker", "paul@luv2code.com"));</p>
<p>		list.add(new Student("Vin", "Diezel", "riddik@yahoo.com"));</p>
<p>		list.add(new Student("John", "Doe", "john@yahoo.com"));</p>
<p>		list.add(new Student("Marry", "Public", "republic@yahoo.com"));</p>
<p>		list.add(new Student("Nika", "Props", "popoil@gmail.com"));</p>
<p>		list.add(new Student("Betany", "Rodrigo", "goom@luv2code.com"));</p>
<p>		list.add(new Student("White", "Deg", "winnie@gmail.com"));</p>
<p>		return list;</p>
<p>	}</p>
<p>}</p>

<p>package com.luv2code.hibernate.demo.entity;</p>

<p>import javax.persistence.Column;</p>
<p>import javax.persistence.Entity;</p>
<p>import javax.persistence.GeneratedValue;</p>
<p>import javax.persistence.GenerationType;</p>
<p>import javax.persistence.Id;</p>
<p>import javax.persistence.Table;</p>

<p>@Entity</p>
<p>//can be skipped if class name matches table name</p>
<p>@Table(name="student")</p>
<p>public class Student {</p>
	
<p>	//means primary key for database</p>
<p>	@Id</p>
<p>	//defines generation strategy for our id if we want</p>
<p>	//to change default primary key generation strategy</p>
<p>	@GeneratedValue(strategy=GenerationType.IDENTITY)</p>
<p>	//mark and name column</p>
<p>	@Column(name="id")</p>
<p>	private int id;</p>
	
<p>	@Column(name="first_name")</p>
<p>	private String firstName;</p>
	
<p>	@Column(name="last_name")</p>
<p>	private String lastName;</p>
	
<p>	@Column(name="email")</p>
<p>	private String email;</p>
	
<p>	//empty constructor</p>
<p>	public Student(){</p>
		
<p>	}</p>
	
<p>	//constructor with fields but not id(primary key)</p>
<p>	public Student(String firstName, String lastName, String email) {</p>
<p>		this.firstName = firstName;</p>
<p>		this.lastName = lastName;</p>
<p>		this.email = email;</p>
<p>	}</p>
	
<p>	//generate getters and setters for all fields</p>
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
<p>	public String getEmail() {</p>
<p>		return email;</p>
<p>	}</p>
<p>	public void setEmail(String email) {</p>
<p>		this.email = email;</p>
<p>	}</p>

<p>	//generate toString</p>
<p>	@Override</p>
<p>	public String toString() {</p>
<p>		return "Student [id=" + id + ", firstName=" + firstName + ", </p>
<p>		lastName=" + lastName + ", email=" + email + "]";</p>
<p>	}	</p>	
<p>}</p>
</div>
 </body>
</html>