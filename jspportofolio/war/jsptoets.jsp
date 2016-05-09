<%@ page import="autoshop.Auto"%>
<%@ page import="autoshop.AutoLijst"%>
<%@ page import="java.util.ArrayList"%>

<!doctype html>
<html lang=''>
<head>
<link rel="stylesheet" href="Stylesheet.css">
<meta charset='utf-8'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="styles.css">
<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>
<script src="script.js" type="text/javascript"></script>
<title>autotoets</title>
</head>
<form id="form" action="jsptoets.jsp" method="get">
	<%
		int min = 1;
		int max = 10000000;
		AutoLijst al = new AutoLijst();
		ArrayList<Auto> autolijst = al.getLijst();
		ArrayList<Auto> selectie = new ArrayList<Auto>();
		ArrayList<String> merken = al.getMerken();
	%>
	<label>min prijs</label> <input id="minprijsvak" type="text"
		name="prijsmin" value="<%=min%>"> <label>max prijs</label> <input
		id="maxprijsvak" type="text" name="prijsmax" value="<%=max%>">
	<input id="knop" type="submit" name="knop" value="filter"> <select
		name="merk" value="<%=merken%>">
		<option value="Alle merken">Alle Merken</option>
		<%
			for (String m : merken) {
		%>
		<option value="<%=m%>">
			<%=m%></option>
		<%
			}
		%>

	</select>
</form>
<body>
<%
	if (request.getParameter("knop") == null) {
		for (Auto auto : autolijst) {
			String autoprijs = auto.getPrijsFormat();
%>
<div>
<p>
	<%=auto.getMerk()%>
	<%=auto.getType()%>
</p>
<p>
	<%=autoprijs%>
</p>
<img id="image" src=<%=auto.getFoto()%> alt="">
</div>
<%
	}
	}
%>
<%
	if (request.getParameter("knop") != null) {
		String m = request.getParameter("merk");
		String getalmin = request.getParameter("prijsmin");
		String getalmax = request.getParameter("prijsmax");
		min = Integer.parseInt(getalmin);
		max = Integer.parseInt(getalmax);

		if (m.equals("Alle merken")) {
			for (Auto auto : autolijst) {
				if (auto.getPrijs() > min && auto.getPrijs() < max) {
					String autoprijs = auto.getPrijsFormat();
%>

<div>
<p>
	<%=auto.getMerk()%>
	<%=auto.getType()%>
</p>
<p>
	<%=autoprijs%>
</p>
<img id="image" src=<%=auto.getFoto()%> alt="">
</div>
<%
	}
			}
		}
		for (Auto auto : autolijst) {
			if (auto.getMerk().equals(m)) {
				if (auto.getPrijs() > min && auto.getPrijs() < max) {
					String autoprijs = auto.getPrijsFormat();
%>

<div>
<p>
	<%=auto.getMerk()%>
	<%=auto.getType()%>
</p>
<p>
	<%=autoprijs%>
</p>
<img id="image" src=<%=auto.getFoto()%> alt="">
</div>
<%
	}
			}
		}
	}
%>

</body>
</html>