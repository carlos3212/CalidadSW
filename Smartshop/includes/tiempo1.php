<?php

// Fin del documento
$tiempo = microtime();
$tiempo = explode(" ",$tiempo);
// Calculamos en tiempo al final del documento
$tiempo_final = $tiempo[0] + $tiempo[1];
// Calculamos en tiempo de carga
$tiempo_carga = $tiempo_final - $tiempo_inicial;
// Redondeamos el valor del flotante a tres decimales
$tiempo_carga = round($tiempo_carga,3);
echo "Pagina generada en {$tiempo_carga} segundos";
return $tiempo_carga;
?>