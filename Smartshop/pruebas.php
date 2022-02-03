$time = 0.5;
// Capturamos el tiempo de la conexión
$date = time();
// Captura de la IP de conexion
$ip = $_SERVER['REMOTE_ADDR'];
// Tiempo de espera
$limite = $date-$time;
$hours = (int)($limite/60/60);
$minutes = (int)($limite/60)-$hours*60;
$seconds = (int)$limite-$hours*60*60-$minutes*60; 
echo "Tiempo empleado para cargar esta pagina: <strong>" 
. $hours.' horas, '.$minutes.' minutos y '.$seconds.' segundos.</strong>';

if($date > $limite){
  add_prueba($conn,$limite);
  
}else
echo "sige";
