<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<meta charset="ISO-8859-1">

<title>Home</title>
</head>
<body>
<container>
	<h1>Hotel Search</h1>

	<label for="city">City</label>
	<form action = "/results">
		<select name="city" id="city">
			<c:forEach items="${cities}" var="city">
				<option value="${city}">${city}</option>
			</c:forEach>
		</select>
		<button>Submit</button>
		
	</form>
</container>
</body>
</html>