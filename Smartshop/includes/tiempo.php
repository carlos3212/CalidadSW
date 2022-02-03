<?php
// Inicio del documento
// Calculamos segundos y microsegundos desde Epoch Unix
$tiempo = microtime();
// Separamos en un array el tiempo en segundos y en microsegundos
$tiempo = explode(" ",$tiempo);
// Sumamos segundos y microsegundos
$tiempo_inicial = $tiempo[0] + $tiempo[1];
?>
