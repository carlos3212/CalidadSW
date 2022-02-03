<?php

if (isset($_POST['login'])) {


$username = $_POST['username'];
$password=($_POST['password']);
include 'db.php';
$email=mysqli_real_escape_string($connection, $username);
$query = "SELECT * FROM users WHERE username='{$username}' and password = '{$password}'";
$select_user_query = mysqli_query($connection, $query);


if (!$select_user_query) {
DIE("QUERY FAILED". mysqli_error($connection));
}
$row = mysqli_fetch_array($select_user_query);

$user_id = $row['userid'];
$user_email = $row['email'];
$user_password = $row['password'];
$user_firstname= $row['firstname'];
$user_lastname= $row['lastname'];
$user_address= $row['address'];
$user_city= $row['city'];
$user_country= $row['country'];
$user_role = $row['role'];
$user_username = $row['username'];


if ($username !== $user_username && $password !== $user_password) {
echo "<div class='center-align meh'>
  <h5 class='red-text'>Wrong Info</h5>
</div>";
}
else{
  if($user_role == 'admin'){

    $_SESSION['userid'] = $user_id;
    $_SESSION['firstname'] = $user_firstname;
    $_SESSION['lastname'] = $user_lastname;
    $_SESSION['password'] = $user_password;
    $_SESSION['address'] = $user_address;
    $_SESSION['city'] = $user_city;
    $_SESSION['country'] = $user_country;
    $_SESSION['email'] = $user_email;
    $_SESSION['username'] = $user_username;
    $_SESSION['role'] = 'admin';
    $_SESSION['logged_in']= 'True';
    header("Location: admin/index.php");
   }

    else {
    $_SESSION['userid'] = $user_id;
    $_SESSION['firstname'] = $user_firstname;
    $_SESSION['lastname'] = $user_lastname;
    $_SESSION['password'] = $user_password;
    $_SESSION['address'] = $user_address;
    $_SESSION['city'] = $user_city;
    $_SESSION['country'] = $user_country;
    $_SESSION['email'] = $user_email;
    $_SESSION['username'] = $user_username;
    $_SESSION['role'] = 'client';
    $_SESSION['logged_in']= 'True';
    $back = $_SERVER['HTTP_REFERER'];
    header( "Location: index.php" );
    }
 }
}

?>
