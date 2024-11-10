<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<% response.sendRedirect("login.jsp"); %>
		<h1>Welcome Student Management System</h1>
		<form action="login" method="post">
			<input type="text" name="name" placeholder="Enter UserName">
			<input type="password" name="email" placeholder="Enter Password">
			<button>Submit</button>
		</form>
	</body>
</html>