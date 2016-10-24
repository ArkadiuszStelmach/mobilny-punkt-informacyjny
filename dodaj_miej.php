<?php

// dodanie dekordu


require('config.inc.php');

$Nazwa = $_REQUEST['Nazwa'];
$Typ = $_REQUEST['Typ'];
$Miasto = $_REQUEST['Miasto'];
$Lok = $_REQUEST['Lok'];
$sql = "insert into miejsca
            (id_miejsca, Nazwa, Typ, Miasto,Lokalizacja)
          values 
            (NULL, '$Nazwa', '$Typ', '$Miasto','$Lok')";


$wynik = mysqli_query($dbc,$sql);



if (!$wynik)
{
  echo " Wyst±pił bł±d bazy danych podczas wykonywania <pre>$sql</pre>";
  echo mysqli_error();
  exit;
}

header('Location: http://localhost/miejsca_warte_odwiedzenia/miejsca.php');

?>
