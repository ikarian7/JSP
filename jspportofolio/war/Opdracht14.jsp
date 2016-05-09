<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@page import="Graden.Graden" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Graden</title>
</head>
<body>
<%
Graden g = new Graden();
String celsValue = "";
String fahrValue = "";
String warning = "";

if (request.getParameter("knop") != null) {
  try {
   
    if (!request.getParameter("cels").equals("") 
     && !request.getParameter("fahr").equals("")) {
       warning = "Voer slechts &eacute;&eacute;n waarde in!";
    }
  
    else if (!request.getParameter("cels").equals("")) {
      int fahr = g.naarFahr(request.getParameter("cels"));
      fahrValue += fahr;
    }
   
    else if (!request.getParameter("fahr").equals("")) {
      int cels = g.naarCels(request.getParameter("fahr"));
      celsValue += cels;
    }
  }
 
  catch(NumberFormatException e) {
    warning = "Voer een geheel getal in";
  }
}
%>
        
<h1>Fahrenheit en Celsius omrekenen</h1>
<form action="Opdracht14.jsp" method="get">
  <table id="graden">
    <tr>
      <th>Celsius</th>
      <th>Fahrenheit</th>
    </tr>
    <tr>
      <td><input type="text" name="cels" value="<%=celsValue%>"></td>
      <td><input type="text" name="fahr" value="<%=fahrValue%>"></td>
      <td><input type="submit" name="knop" value="Omrekenen"></td>
    </tr>
    
    <% if (request.getParameter("knop") != null) { %>
      <tr>
        <td colspan="2" class="fout"><%= warning %></td>
      </tr>
    <% } %>
  </table>

</form>
</body>
</html>