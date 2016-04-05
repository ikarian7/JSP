<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Auto shoppu</title>
</head>
<body>
	<%@ page import="autoshop.Auto"%>
	<%@ page import="autoshop.AutoLijst"%>
	<label>Kies Merk</label>
	<select>
		<option value="alle">Alle merken</option>

		<option value="Ford">Ford</option>

		<option value="Opel">Opel</option>

		<option value="Subaru">Subaru</option>

		<option value="Mercedes">Mercedes</option>

		<option value="Ferrari">Ferrari</option>

		<option value="Lotus">Lotus</option>

		<option value="Citroen">Citroen</option>

		<option value="Volvo">Volvo</option>

		<option value="Mini">Mini</option>

	</select>
	<br>
	<label>Minimum prijs</label>
	<input type="text" id="minprijs">
	<label>Maximum prijs</label>
	<input type="text" id="maxprijs">
	<br>
	<input type="button" id="knop_merk_prijs" value="OK">
	<div>
		<div>

			<img src="" alt="FordFiesta">
			<p>Ford Fiesta</p>
			<p>&euro;23.999,-</p>
		</div>

		<div>
			<img src="" alt="FordFocus">
			<p>Ford Focus</p>
			<p>&euro;18.995,-</p>
		</div>

		<div>
			<img src="" alt="OpelAstra">
			<p>Opel Astra</p>
			<p>&euro;14.895,-</p>
		</div>

		<div>
			<img src="" alt="OpelInsignia">
			<p>Opel Insignia</p>
			<p>&euro;65.450,-</p>
		</div>

		<div>
			<img src="" alt="SubaruForester">
			<p>Subaru Forester</p>
			<p>&euro;34.750,-</p>
		</div>

		<div>
			<img src="" alt="SubaruImpreza">
			<p>Subaru Impreza</p>
			<p>&euro;28.345,-</p>
		</div>

		<div>
			<img src="" alt="MercedesE 63">
			<p>Mercedes E 63</p>
			<p>&euro;110.995,-</p>
		</div>

		<div>
			<img src="" alt="MercedesCLA 45">
			<p>Mercedes CLA 45</p>
			<p>&euro;190.780,-</p>
		</div>

		<div>
			<img src="" alt="MercedesE 230">
			<p>Mercedes E 230</p>
			<p>&euro;1.000,-</p>
		</div>

		<div>
			<img src="" alt="MercedesC 250">
			<p>Mercedes C 250</p>
			<p>&euro;599,-</p>
		</div>

		<div>
			<img src="" alt="Ferrari612 GTO">
			<p>Ferrari 612 GTO</p>
			<p>&euro;350.500,-</p>
		</div>

		<div>
			<img src="" alt="FerrariCalifornia">
			<p>Ferrari California</p>
			<p>&euro;210.780,-</p>
		</div>

		<div>
			<img src="" alt="Ferrari458">
			<p>Ferrari 458</p>
			<p>&euro;280.775,-</p>
		</div>

		<div>
			<img src="" alt="LotusElise CR">
			<p>Lotus Elise CR</p>
			<p>&euro;48.591,-</p>
		</div>

		<div>
			<img src="" alt="LotusElise S CR">
			<p>Lotus Elise S CR</p>
			<p>&euro;60.079,-</p>
		</div>

		<div>
			<img src="" alt="Citroen2CV">
			<p>Citroen 2CV</p>
			<p>&euro;459,-</p>
		</div>

		<div>
			<img src="" alt="VolvoV40">
			<p>Volvo V40</p>
			<p>&euro;1.250,-</p>
		</div>

		<div>
			<img src="" alt="MiniCooper">
			<p>Mini Cooper</p>
			<p>&euro;34.495,-</p>
		</div>
	</div>
</body>
</html>