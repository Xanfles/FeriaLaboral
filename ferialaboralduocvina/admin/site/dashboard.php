<?php
session_start();
if (session_id() !== $_SESSION['id']) {
    header("location:../login.php");
}
?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <?php require_once("include/header.php"); ?>
    <title>admin</title>
  </head>
  <body>
    <?php  require_once("include/nav_admin.php");?>
    <br>


    <table id="tabla_todo" class="table table-striped table-bordered">
      <thead>
        <tr>
          <td with="100">RUT</td>
          <td with="100">NOMBRE</td>
          <td with="100">TELEFONO</td>
          <td with="100">EMAIL</td>
          <td with="100">CARRERA</td>
          <td with="100">CARGO</td>
          <td with="100">EMPRESA</td>
          <td with="100">HORA</td>
        </tr>
      </thead>
    </table>
    <center><a href="docs/exportar.php" class="btn btn-primary">EXPORTAR A PDF</a></center>

    <?php require_once("include/footer.php"); ?>
  </body>
</html>
