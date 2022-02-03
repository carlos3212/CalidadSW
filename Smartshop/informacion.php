<?php

session_start();

if (!isset($_SESSION['logged_in'])) {
  $nav ='includes/nav.php';
}
else {
  $nav ='includes/navconnected.php';
  $idsess = $_SESSION['userid'];
}



require 'includes/header.php';
$page_id=6;
require $nav; 
?>



<div class="container-fluid home" id="top">
  <div class="container search">
    <nav class="animated slideInUp wow">
      <div class="nav-wrapper">
        
        <form method="GET" action="search.php">
          <div class="input-field">
            <input id="search" class="searching" type="search" name='searched' required>
            <label for="search"><i class="material-icons">search</i></label>
            <i class="material-icons">close</i>
          </div>

          <div class="center-align">
            <button type="submit" name="search" class="blue waves-light miaw waves-effect btn hide">Search</button>
          </div>
        </form>
      </div>
    </nav>
  </div>
</div>

<div class="container most">
  <div class="row">
  

          <div class="container-fluid center-align categories">
            <a href="#category" class="button-rounded btn-large waves-effect waves-light">información</a>
            <div class="container" id="category">
              <div class="row">
                
               

              <div class="container-fluid about" id="about">
                <div class="container">
                  <div class="row">
                <h3>Preguntas frecuentes</h3>
                <h5>Como realizo una compra</h5>
                <p>Para  realizar la compra de cualquier  pedido es necesario que te registres para tener  la información necesaria y para seguridad del usuario</p>    
              <h5>Como acceder al chat en línea</h5 > 
              <p>En la parte inferior a su lado derecho de la  pantalla encontrará un botón flotante de color verde de clic ahí y  podrá acceder al chat inmediatamente es necesario que este registrada para que  acceder al chat.</p> 
             <h5>Botones de acceso directo</h5>
              <ul>
                <p>Para acceder al carrito de compras pulsé</p>
               <li>shift+C</li>
               <p>Para acceder a la pantalla principal pulse </p>
               <li>shift+I</li>
               <p>Para acceder al chat online </p>
               <li>shift+M</li>
             </ul>
             <h5>Idioma</h5>
             <p>Para seleccionar su idioma en la  parte superior izquierda puede elegir el idioma de su preferencia</p>
            </div>
                    </div>

                  
                  </div>
                </div>

                <div class="container contact" id="contact">
                  <div class="row">
                   
                </div>

           
<?php add_cargapagina($conn, $tiempo_carga, $page_id); ?>