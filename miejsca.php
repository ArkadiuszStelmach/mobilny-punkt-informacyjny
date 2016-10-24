<html>
<head>
<meta charset="utf-8">
<link rel="Stylesheet" type="text/css" href="index.css" >
</head>
<body>
<center><p id="naglowek">Ciekawe miejsca</p></center>
<div id="menu">
<img src="bar3.png" style="float: right; border-left: 1px solid black">
<center><br>NAWIGACJA<br><br>
<a href="index.php">Strona tytułowa</a><br><br>
<a href="miejsca.php">Ciekawe miejsca</a>
</center>
</div>

<?php

require('config.inc.php');
?>


<div id="wysz"> 
<img src="bar1.png" style="float: left; border-right: 1px solid black">
<form action="wysz_miej.php" method="post" enctype="multipart/form-data">
<br><br><center><table>
<?php



$typ = mysqli_query($dbc,'SELECT * FROM Typy');
echo "<tr><td>  <input type=radio name= 'opcja' value= 1 /></td><td> Typ </td><td colspan=2> <select name = Typ>'";
while($row = mysqli_fetch_array($typ)) 
  echo '<option>' . $row['Typ'] . '</option>';
echo '</select></td></tr>';


?>


<tr><td><input type="radio" name= 'opcja' value= 2 /></td><td> Nazwa </td><td><input type="text" name="Nazwa"  /></td></tr>
<tr><td><input type="radio" name= 'opcja' value= 3 /></td><td> Miasto </td><td><input type="text" name="Miasto"  /></td></tr>


<tr><td colspan="3"><center><input type="submit" value="wyszukaj"></center></td></tr>
</table></center>
</form><br><br>
<center>(?) Zaznacz według, którego kryterium<br>chcesz szukać, a następnie uzupełnij<br>te pole i wciśnij przycisk "wyszukaj"</center>



</div>




<center>

<?php






$sql='SELECT * FROM miejsca ' ;

echo '<table border="1" ></td><td>Nazwa</td><td>Typ</td><td>Miasto</td><td>Lokalizacja</td>';
$r = mysqli_query($dbc,$sql)
  or die("Error: ".mysqli_error($dbc));
while (list($Id_miejsca, $Nazwa, $Typ, $Miasto, $Lokalizacja) = mysqli_fetch_array($r, MYSQLI_NUM)){
	echo '<tr><td>'. $Nazwa.'</td><td>'.$Typ.'</td><td>'.$Miasto.'</td><td><a href='.$Lokalizacja .' target=_blank>Mapa</a></td></tr> ';
	}
	echo '</table>';
	?>
	
</center>
</body>
</html>