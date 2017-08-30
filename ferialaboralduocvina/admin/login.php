<?php
session_start();
if (session_id() !== null) {
    session_unset();
    session_destroy();
}
?>

<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <title>Inscripcion</title>
  </head>
  <body>
    <?php  require_once("site/include/nav_login.php");?>



<!--Pulling Awesome Font -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
          <form class="text-left" action="site/query/login.php" method="post">
            <div class="form-login">
            <h4>Bienvenido</h4>
            <input type="text" name="nickname" id="nickname" class="form-control input-sm chat-input" placeholder="Usuario" />
            </br>
            <input type="password" name="clave" id="clave" class="form-control input-sm chat-input" placeholder="Contraseña" />
            </br>
            <div class="wrapper">
            <span class="group-btn">
                <button type="submit" class="btn btn-primary btn-md">Ingresar <i class="fa fa-sign-in"></i></button>

            </span>
            </div>
            </div>
          </form>

        </div>
    </div>
</div>


<?php require_once("site/include/footer.php"); ?>
</body>
</html>
