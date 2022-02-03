<?php

session_start();

if (!isset($_SESSION['logged_in'])) {
    $nav ='includes/nav.php';
}

elseif($_SESSION['logged_in'] == 'True') {
  header('Location: admin/index');
}

else{
  $nav ='includes/navconnected.php';
  $idsess = $_SESSION['userid'];
}
error_reporting(0);

 require 'includes/header.php';
 require $nav; ?>



<div class="container-fluid center-align sign">
    <div class="container">

        <div class="row">
            <div class="col s12">
                <ul class="tabs">
                    <li class="tab col s3"><a class="active" href="#test1">Log In</a></li>
                    <li class="tab col s3"><a href="#test2">Sign Up</a></li>
                </ul>
            </div>

            <div class="container forms">
                <div class="row">

                <div id="test1" class="col s12 left-align">
                        <div class="card">
                            <div class="row">

                                <form action="" method="post" autocomplete="off">
                                    <div class="form-group has-feedback">
                                        <input type="text" class="form-control" placeholder="Username1" name="username"
                                            required>
                                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <input type="password" class="form-control" placeholder="Password"
                                            name="password" required>
                                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                    </div>
                                    <div class="row">
                                        <?php require 'includes/loginconfirmation.php';?>
                                        <!-- /.col -->
                                        <div class="col-xs-4">
                                            <button type="submit"
                                                class="text-muted text-center btn-block btn btn-primary btn-rect"
                                                name="login">Log In</button>
                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>

                    <div id="test2" class="col s12 left-align">
                        <div class="card">
                            <div class="row">

                                <form action="" method="post" autocomplete="off">
                                    <div class="form-group has-feedback">
                                        <input type="text" class="form-control" placeholder="Username" name="username"
                                            required>
                                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <input type="password" class="form-control" placeholder="Password"
                                            name="password" required>
                                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                    </div>
                                    <div class="row">
                                        <?php require 'includes/loginconfirmation.php';?>
                                        <!-- /.col -->
                                        <div class="col-xs-4">
                                            <button type="submit"
                                                class="text-muted text-center btn-block btn btn-primary btn-rect"
                                                name="login">Log In</button>
                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>


<?php require 'includes/footer.php'; ?>