<%@ page language="java" pageEncoding="UTF-8" contentType="text/html charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Home</title>
		
		<style>
			body {
				text-align: center;
			}
		</style
	</head>	

	<body>
		<h2>Enter your name:</h2>
		<form action="${pageContext.request.contextPath}/display" method="get">
			<input type="text" name="name" size="20px">
			<input type="submit" value="submit">
		</form>
	</body>
</html>