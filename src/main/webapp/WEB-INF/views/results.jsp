<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Hotel Result</title>
</head>
<body>
<container>
<h2>Hotel in ${city}</h2>			
<container>	
<table>
 
  <tr>
    <th>Hotel</th>
    <th>Price per Night</th>
  </tr>
  <c:forEach items = "${hotels}" var = "hotel">
  <tr>
    <td>${hotel.name}</td>
    <td>${hotel.pricePerNight}</td>
  </tr>
  </c:forEach>
</table>
</container>
</container>

</body>
</html>