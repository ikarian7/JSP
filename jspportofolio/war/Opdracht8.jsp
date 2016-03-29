<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<form action="index.jsp" method="get">
	<input type="text" name="getal">
	<div class="knop">
		<input type="submit" name="knop" value="Ok">
	</div>
</form>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>tafels</title>
</head>
<body>
<form action="Opdracht8.jsp" method="get">
    <input type="text" name="tekst_input_1">
    <input type="submit" name="knop_1" value="Ok">
    <input type="hidden" name="naam" value="<%= eenWaarde %>">
</form>
    <h3>De tafel van 5</h3>
    <% if (geklikt) { 
	for (int i = 1; i <= 10; i++) { %>
		<%= i %> x <%= getal %> = <%= i * getal %> <br>
	<% } 
} %>
</body>
</html>