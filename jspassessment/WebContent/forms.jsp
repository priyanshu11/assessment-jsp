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
<title>Enter the details</title>
</head>
<body>
	<form action="ser" method="post">
		Posting Title: <input type="text" name="title" placeholder="Title"><br>
		City: <input type="text" name="city" placeholder="Enter City"><br>
		Postal Code: <input type="text" name="postal"
			placeholder="Enter postal code"><br> Description:
		<textarea name="desc" placeholder="Description"></textarea>
		<br> email:<input type="text" name="email" placeholder="email"><br>
		<input type="submit" value="Add">
	</form>
	<%
		if (request.getAttribute("counter") != null)
			out.print("Data Added Successfuly.");
	%>
	<a href="index.jsp">Home</a>

</body>
</html>