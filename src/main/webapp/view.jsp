<%@page import="student.Student"%>
<%@page import="java.util.List"%>
<%@page import="javax.persistence.EntityTransaction"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="./view.css">
	</head>
	
	<body>
		<h1>Student Data</h1>
		<a href="login.jsp"><button class="out">Log Out</button></a>
		<a href="register.jsp"><button class="reg">Register Student</button></a>
		<table>
			<tr>
				<th>S.No</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile Number</th>
				<th>Age</th>
				<th>Place</th>
				<th colspan="2">Action</th>
			</tr>
		<%
			EntityManager em=Persistence.createEntityManagerFactory("dev").createEntityManager();
			EntityTransaction et=em.getTransaction();
		
			List<Student> list=em.createQuery("from Student").getResultList();
			int count=1;
			for(Student s:list)
			{
		%>
			<tr>
				<td><%= count++ %></td>
				<td><%= s.getName() %></td>
				<td><%= s.getEmail() %></td>
				<td><%= s.getMobile() %></td>
				<td><%= s.getAge() %></td>
				<td><%= s.getPlace() %></td>
				<td class="action">
					<a href="edit.jsp?id=<%= s.getId()%>"><button class="edit">Edit</button></a>
					<a href="delete?id=<%= s.getId()%>"><button class="delete">Delete</button></a>
				</td>
			</tr>
		<% } %>
		</table>
		<script type="text/javascript">
			setTimeout(() => {
				let reg=document.getElementById("reg");
				log.style.cssText="display:none";
			}, 2000);
		</script>
	</body>
</html>