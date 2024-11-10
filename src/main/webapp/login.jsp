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
		<form action="login" method="post">
			<h2>Student Management System Login</h2>
			<input type="text" name="username" placeholder="Enter UserName">
			<input type="password" name="password" placeholder="Enter Password">
			<button>Login</button>
			<h4><a href="teacher_reg.jsp">Click here</a> to create account</h4>
		</form>
		<script type="text/javascript">
			setTimeout(() => {
				let log=document.getElementById("log");
				log.style.cssText="display:none";
			}, 2000);
		</script>
	</body>
</html>