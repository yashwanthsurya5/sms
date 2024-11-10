<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="./view.css">
		<style type="text/css">
			h1,h2{
			text-align: center;
			font-family: verdana;
			margin: 5vh;
			}
		</style>
	</head>
	
	<body>
		<h1>Welcome to Student Management System</h1>
		<a href="view"><button class="view">Click here to view students</button></a>
		<script type="text/javascript">
			setTimeout(() => {
				let log=document.getElementById("log");
				log.style.cssText="display:none";
			}, 2000);
		</script>
	</body>
</html>