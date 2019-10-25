<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Details</title>
</head>
<body>
<h1>Here are the advertisements and their details</h1>
<table border="1">
		<tr>
			<td>Title</td><td>city/Neighbourhood</td><td>Postal code</td><td></td><td> Description</td><td>email</td><td></td>
		</tr>
		<c:forEach var="det" items="${list}">
			<tr>
				<td>${det.title}</td>
				<td>${det.city}</td>
				<td>${det.postal}</td>
				<td>${det.desc}</td>
				<td>${det.email}</td>
			</tr>
			
		</c:forEach>
	</table>

</body>
</html>