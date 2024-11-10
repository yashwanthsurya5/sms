<%@page import="student.Student"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityTransaction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="./login.css">
	</head>
	
	<body>
		<%
			EntityManager em=Persistence.createEntityManagerFactory("dev").createEntityManager();
			EntityTransaction et=em.getTransaction();
	
			int id=Integer.parseInt(request.getParameter("id"));
		
			Student std=em.find(Student.class, id);
		%>
		<form action="edit" method="post">
			<h2>Edit Student Details</h2>
			<input type="hidden" name="id" value="<%= std.getId() %>" placeholder="ID">
			<input type="text" name="name" value="<%= std.getName() %>" placeholder="Edit Full Name">
			<input type="email" name="email" value="<%= std.getEmail() %>" placeholder="Edit Email Address">
			<input type="number" name="mobile" value="<%= std.getMobile() %>" placeholder="Edit Mobile Number">
			<input type="number" name="age" value="<%= std.getAge() %>" placeholder="Edit Age">
			<input type="text" name="place" value="<%= std.getPlace() %>" placeholder="Edit Place">
			<button>Update</button>
		</form>
	</body>
</html>