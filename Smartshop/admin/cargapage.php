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
SELECT * FROM `page_carga` ORDER BY `page_carga`.`page_id` ASC ");

$consulta ->execute();
$consulta = $consulta ->fetchAll();


?>
				<article>
					<div class="mensaje">
						<h2>Tiempo de carga </h2>
					</div>
					
					<table class="tabla">
						  <tr>
							<th>tipo de carga</th>
							<th>nombre pagina</th>
							</tr>
						<?php foreach ($consulta as $Sql): ?>
						<tr>
							<?php echo "<td>". $Sql['carga_ip']. "</td>"; ?>
							<?php echo "<td>". $Sql['page_id']. "</td>"; ?>
							
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
