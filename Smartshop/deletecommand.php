
<?php
session_start();

  include_once 'db.php';

if (isset($_GET['id'])) {
   $id=$_GET['id'];
   $idsess = $_SESSION['userid'];

   $query_delete = "DELETE FROM command WHERE  id = '$id'";
   $result_delete = $connection->query($query_delete);

   //$_SESSION['item'] -= 1;

header('Location: ' . $_SERVER['HTTP_REFERER']);
}

else {
  header('Location: sign');
}
?>