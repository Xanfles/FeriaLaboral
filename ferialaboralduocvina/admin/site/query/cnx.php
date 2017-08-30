<?php
function connect() {
	$cnx = mysql_connect("localhost", "root", "");
	mysql_set_charset('utf8',$cnx);
  mysql_select_db("db_feria_laboral", $cnx) or die("Error, no se pudo conectar con la base de datos");
  if (!$cnx) {
      die('No hay conexión: ' . mysql_error());
      echo('Error.</br>');
  }
}
