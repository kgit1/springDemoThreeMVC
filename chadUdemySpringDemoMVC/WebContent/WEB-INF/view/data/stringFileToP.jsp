<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resources/css/main.css">
<title>stringFileToP</title>
</head>
<body>
<div class="main">
<a href="${pageContext.request.contextPath}">main1</a>
<hr>
<script src="//pastebin.com/embed_js/5LdE5r8t"></script>
<p>package cLiner;</p>

<p>import java.io.File;</p>
<p>import java.io.FileNotFoundException;</p>
<p>import java.io.FileWriter;</p>
<p>import java.io.IOException;</p>
<p>import java.util.ArrayList;</p>
<p>import java.util.List;</p>
<p>import java.util.Scanner;</p>

<p>public class MainApp {</p>

<p>	public static void main(String[] args) {</p>
<p>		String fileName = "test.txt";</p>
<p>		List<String> list = new ArrayList<>();</p>
<p>		try {</p>
<p>			Scanner scan = new Scanner(new File(fileName));</p>

<p>			while (scan.hasNextLine()) {</p>
<p>				String temp = scan.nextLine();</p>
<p>				if(!temp.isEmpty()){</p>
<p>					temp = "<p>" + temp + "</p>";</p>
<p>				}</p>
<p>				list.add(temp);</p>
<p>			}</p>

<p>			System.out.println("check 2");</p>
<p>			for (String string : list) {</p>
<p>				System.out.println(string);</p>
<p>			}</p>
<p>		} catch (FileNotFoundException e) {</p>
<p>			e.printStackTrace();</p>
<p>		}</p>

<p>		File f = new File(fileName + "-lined");</p>
<p>		try {</p>
<p>			if (!f.createNewFile()) {</p>
<p>				f.delete();</p>
<p>			}</p>
<p>			;</p>
<p>		} catch (IOException e1) {</p>
<p>			e1.printStackTrace();</p>
<p>		}</p>
<p>		try {</p>
<p>			FileWriter writer = new FileWriter(f, true);</p>
<p>			for (String string : list) {</p>
<p>				System.out.println(string);</p>
<p>				writer.write(string + "\n");</p>
<p>			}</p>
<p>			writer.close();</p>
<p>		} catch (IOException e) {</p>
<p>			e.printStackTrace();</p>
<p>		}</p>
<p>	}</p>
<p>}</p>

</div>
</body>
</html>