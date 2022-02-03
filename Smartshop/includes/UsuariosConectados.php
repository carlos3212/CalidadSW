<?php

$Server = 'localhost';
$UserBD = 'root';
$PasswordBD = '';
$BaseDatos = 'smartshop';
 
$con =new mysqli($Server, $UserBD, $PasswordBD , $BaseDatos);

// Incluimos el fichero para la conexion con la abse de datos

// Tiempo de espera 3 minutos
$time = 2;
$time2=1;
// Capturamos el tiempo de la conexión
$date = time();
// Captura de la IP de conexion
$ip = $_SESSION['userid'];
// Tiempo de espera
$limite = $date-$time*60;
$limite2 = $date-$time2*60;
//
mysqli_query($con,"INSERT INTO usuarios_offline
SELECT * FROM usuarios_online
WHERE date  < $limite") ;
// Si supera los 3 minutos borramos de la base de datos la conexion
mysqli_query($con,"delete from usuarios_online where date < $limite2") ;
// Mostramos todos los usuarios conectados
$resp = mysqli_query($con,"select * from usuarios_online where ip='$ip'") ;
// Si son los mismo actualizamos la tabla usuarios_online
if(mysqli_num_rows($resp) != 0) {
mysqli_query($con,"update usuarios_online set date='$date' where ip='$ip'") ;
}
// Caso contrario insertamos las nuevas visitas
else {
mysqli_query($con,"insert into usuarios_online (date,ip) values ('$date','$ip')") ;
}

$query = "SELECT * FROM usuarios_online";

$resp = mysqli_query($con,$query) or die(mysqli_error($con));
// almacenamos la consulta en la variable $conectados
$conectados = mysqli_num_rows($resp);
// Condicional para comporbar usuarios conectados
if($conectados > 1 || $conectados == 0)
{
 echo("Hay ");
}else{
 echo("Hay ");
}
if($conectados == 0){
  echo("no ");
	}else{
  echo ($conectados." ");
}
if($conectados > 1 || $conectados == 0){
	echo("usuarios en línea.");
}else{
 echo("usuario en línea.");
}
?>