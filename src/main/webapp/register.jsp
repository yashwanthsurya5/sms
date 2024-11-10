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
		<form action="register" method="post">
			<h2>Student Registration Form</h2>
			<input type="text" name="name" placeholder="Enter Full Name">
			<input type="email" name="email" placeholder="Enter Email Address">
			<input type="number" name="mobile" placeholder="Enter Mobile Number">
			<input type="number" name="age" placeholder="Enter Age">
			<input type="text" name="place" placeholder="Enter Place">
			<button>Register</button>
		</form>
	</body>
</html>