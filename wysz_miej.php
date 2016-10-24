<html>
<head>
<meta charset="utf-8">
<link rel="Stylesheet" type="text/css" href="index.css" >
</head>
<body>
<center><p id="naglowek">Wyniki wyszukiwania</p></center>
<div id="menu">
<img src="bar3.png" style="float: right; border-left: 1px solid black">
<center><br>NAWIGACJA<br><br>
<a href="index.php">Strona tytułowa</a><br><br>
<a href="miejsca.php">Ciekawe miejsca</a>
</center>
</div>

<center>
<?php
require('config.inc.php');
$opcja = $_POST['opcja'];
switch($opcja){
	
	
	case 1:

	$b = $_REQUEST['Typ'];
	
	 $a = 'Typ';
	 
	 $sql = "Select * FROM miejsca WHERE $a= '$b'";



$wynik = mysqli_query($dbc,$sql);



if (!$wynik)
{
  echo " Wyst±pił bł±d bazy danych podczas wykonywania <pre>$sql</pre>";
  echo mysqli_error();
  exit;}
	
break;
	
	
	
	case 2:


	$b = $_REQUEST['Nazwa'];
	
	 $a = 'Nazwa';
	 
	 $sql = "Select * FROM miejsca WHERE $a LIKE '%$b%'";



$wynik = mysqli_query($dbc,$sql);



if (!$wynik)
{
  echo " Wyst±pił bł±d bazy danych podczas wykonywania <pre>$sql</pre>";
  echo mysqli_error();
  exit;}

	
	break;

	
	case 3:

	
	$b = $_REQUEST['Miasto'];
	
	 $a = 'Miasto';
	 
	 $sql = "Select * FROM miejsca WHERE $a LIKE '%$b%'";



$wynik = mysqli_query($dbc,$sql);



if (!$wynik)
{
  echo " Wyst±pił bł±d bazy danych podczas wykonywania <pre>$sql</pre>";
  echo mysqli_error();
  exit;}


break;

}
  
$r = mysqli_query($dbc,$sql)
  or die("Error: ".mysqli_error($dbc));
echo '<table border="1" ><tr><td></td><td>Nazwa</td><td>Typ</td><td>Miasto</td><td>Położenie</td>';
while (list($id_miejsca, $Nazwa, $Typ, $Miasto, $Polozenie) = mysqli_fetch_array($r,MYSQLI_NUM)){
	echo '<tr><td> <a href="usun_u.php?id_uczen='.$id_miejsca.'"
	title="Usuń rekord">Usuń </a> </td><td>'. $Nazwa.'</td><td>'.$Typ.'</td><td>'.$Miasto.'</td><td><a href='.$Polozenie .' target=_blank>Mapa</a></td></tr> ';
	}
	
	
	echo '</table>';
	
?>
<center>
</body>
</html>