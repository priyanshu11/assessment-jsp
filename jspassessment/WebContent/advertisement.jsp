<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Advertisement</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

<h1>What type is posting is this:</h1>
						
<form action="/ser" method="post">
<table align="center">
<tr>
<td>
<input type="radio" name="community" value="community">Community</td>
</tr>
<tr>
<td>
<input type="radio" name="events" value="events">Events</td>
</tr>
<tr>
<td>
<input type="radio" name="sale" value="sale">Sale</td></tr>
<tr>
<td>
<input type="radio" name="housing" value="housing">housing</td></tr> 
<tr>
<td>

<input type="radio" name="jobs" value="jobs">Jobs</td></tr> 
<tr>

<td>
<input type="radio" name="services" value="services">services</td></tr> 
<tr>
<td>
<a href="forms.jsp" type="button">Submit</a></td>
</tr>
</table>
</form>
</body>
</html>