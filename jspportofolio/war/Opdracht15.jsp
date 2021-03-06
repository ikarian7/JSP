<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" " http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rekenmachine</title>
</head>
<body>
	<%@ page import="rekenmachine.Rekenmachine"%>
	<%
		String uitkomst = "";
		String foutboodschap = "";

		if (request.getParameter("functie") != null) {
			String getal1 = request.getParameter("getal_1");
			String getal2 = request.getParameter("getal_2");
			String functie = request.getParameter("functie");

			Rekenmachine rm = new Rekenmachine(getal1, getal2, functie);
			uitkomst = rm.getUitkomst();
			foutboodschap = rm.getFoutboodschap();
		}
	%>

	<h2>Rekenmachine</h2>

	<form action="Opdracht15.jsp" method="get">
		<table id="rekenmachine">

			<tr>
				<th colspan="2">Eerste getal</th>
				<th colspan="2">Tweede getal</th>
			</tr>
			<tr>
				<td colspan="2"><input name="getal_1" value="<%=uitkomst%>">
				</td>
				<td colspan="2"><input name="getal_2"></td>
			</tr>
			<tr>
				<td><input type="submit" name="functie" value="+"></td>
				<td><input type="submit" name="functie" value="-"></td>
				<td><input type="submit" name="functie" value="X"></td>
				<td><input type="submit" name="functie" value="/"></td>
			</tr>
			<tr>
				<td colspan="4"><%=foutboodschap%></td>
			</tr>

		</table>
	</form>
</body>
</html>
