<?php
session_start();
$_SESSION['userid'] = time();
echo 'Pasaron ' , (time() - $_SESSION['userid']); 
?>