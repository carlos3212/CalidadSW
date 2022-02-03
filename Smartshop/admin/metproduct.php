<?php

session_start();

if ($_SESSION['role'] !== 'admin') {
  header('Location: ../index');
}

 require 'includes/header.php';
 require 'includes/navconnected.php'; //require $nav;?>

 <div class="container-fluid product-page">
   <div class="container current-page">
      <nav>
        <div class="nav-wrapper">
          <div class="col s12">
            <a href="index" class="breadcrumb">Dashboard</a>
            <a href="infoproduct" class="breadcrumb">Products</a>
            <a href="editproduct" class="breadcrumb">Commands</a>
          </div>
        </div>
      </nav>
    </div>
   </div>


<div class="container scroll">

<?php
$mensaje='';
try{
	$conexion = new PDO('mysql:host=localhost;dbname=smartshop','root','');
}catch(PDOException $e){
	echo "Error: ". $e->getMessage();
}
$consulta = $conexion -> prepare("
	SELECT * FROM pages where nombre_pag = 'chat'");

$consulta ->execute();
$consulta = $consulta ->fetchAll();

//ofline
$offline = $conexion -> prepare("
SELECT * FROM `usuarios_offline` ORDER BY `usuarios_offline`.`id` DESC");

$offline ->execute();
$offline = $offline ->fetchAll();


?>
				<article>
					<div class="mensaje">
					<style>
  h4 .red-text {
    color: red;
  }
</style>
						<h4 class="red-text" color=red;>Entendibilidad</h4>
						<h5>Número de veces durante una sesión que el usuario accede a las funciones
de ayuda en línea</h5>
					</div>
					
					<table class="tabla">
						  <tr>
							<th>Nombre Pgina</th>
							<th>Vistas</th>
							</tr>
						<?php foreach ($consulta as $Sql): ?>
						<tr>
							<?php echo "<td>". $Sql['nombre_pag']. "</td>"; ?>
							<?php echo "<td>". $Sql['total_views']. "</td>"; ?>
							
						</tr>
						<?php endforeach; ?>
					</table>
							<?php  if(!empty($mensaje)): ?>
							  <ul>
								  <?php echo $mensaje; ?>
							  </ul>
							<?php  endif; ?>
				</article>
				<article>
				<h4 class="red-text" color=red;>Efectividad</h4>
					<div class="mensaje">
						<h5>El número de sesiones de trabajo diarias abandonadas sin ninguna
transacción completada</h5>
					</div>
					
					<table class="tabla">
						  <tr>
							<th>Id Usuario</th>
							<th>fecha</th>
							</tr>
						<?php foreach ($offline as $Sql): ?>
						<tr>
							<?php echo "<td>". $Sql['ip']. "</td>"; ?>
							<?php echo "<td>".date("Y-m-d h:i:sa", $Sql['date']) . "</td>"; ?>
							
						</tr>
						<?php endforeach; ?>
					</table>
							<?php  if(!empty($mensaje)): ?>
							  <ul>
								  <?php echo $mensaje; ?>
							  </ul>
							<?php  endif; ?>
				</article>
	</section>

</body>
</html>
 
</div>

 <?php require 'includes/footer.php'; ?>
