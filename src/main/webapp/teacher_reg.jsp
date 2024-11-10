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
		<form action="teachreg" method="post">
			<h2>Teacher Registration Form</h2>
			<input type="text" name="name" placeholder="Enter Full Name">
			<input type="email" name="email" placeholder="Enter Email Address">
			<input type="number" name="mobile" placeholder="Enter Mobile Number">
			<input type="text" name="uname" placeholder="Enter UserName">
			<input type="password" name="password" placeholder="Enter Password">
			<button>Register</button>
		</form>
		<script type="text/javascript">
			setTimeout(() => {
				let reg=document.getElementById("reg");
				log.style.cssText="display:none";
			}, 2000);
		</script>
	</body>
</html>