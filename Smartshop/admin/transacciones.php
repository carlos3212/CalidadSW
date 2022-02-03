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
	SELECT * FROM command ");
$consulta ->execute();
$consulta = $consulta ->fetchAll();
//total aprobadas
$aprobadas = $conexion -> prepare(" select count(*) from command WHERE statut= 'paid'");
$aprobadas ->execute();
$aprobadas = $aprobadas ->fetchAll();
// total abandonadas
$abandonadas = $conexion -> prepare(" select count(*) from command WHERE statut= 'ordered'");
$abandonadas ->execute();
$abandonadas = $abandonadas ->fetchAll();

?>
               <article>
					
					
					<table class="tabla">
						  <tr>
							<th>Total Transacciones Aporbadas</th>
							
                            </tr>
						<?php foreach ($aprobadas as $Sql): ?>
						<tr>
							<?php echo "<td>". $Sql['count(*)']. "</td>"; ?>
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
					
					
					<table class="tabla">
						  <tr>
							<th>Total Transacciones Abandonadas</th>
                            </tr>
						
                        <?php foreach ($abandonadas as $Sql): ?>
						<tr>
							<?php echo "<td>". $Sql['count(*)']. "</td>"; ?>
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
					<div class="mensaje">
						<h2>Transacciones </h2>
					</div>
					
					<table class="tabla">
						  <tr>
							<th>Id usuario</th>
							<th>Fecha</th>
                            <th>Tran. Exitosas</th>
                            <th>Tran. Abandonadas</th>
							</tr>
						<?php foreach ($consulta as $Sql): ?>
						<tr>
							<?php echo "<td>". $Sql['userid']. "</td>"; ?>
							<?php echo "<td>". $Sql['dat']. "</td>"; ?>
                            
                            <?php 
                            if ($Sql['statut']== 'paid'){
                                echo "<td>". $Sql['statut']. "</td>"; }
                                else  echo "<td> - </td>";
                                ?>

                            <?php 
                            if ($Sql['statut']!= 'paid'){
                                echo "<td>". $Sql['statut']. "</td>"; }?> 
							
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
