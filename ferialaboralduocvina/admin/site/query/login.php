<?php
require_once("cnx.php");
connect();

$nickname = $_POST['nickname'];
$clave = $_POST['clave'];

$sql = "select * from login where nickname='$nickname' and clave='$clave'";
$result = mysql_query($sql);
$count = mysql_num_rows($result);
if ($count == 1) {
    while ($row = mysql_fetch_array($result)) {
        session_start();
        $_SESSION['id']=  session_id();
        $_SESSION['nickname'] = $row['nickname'];
    }
	header('location:../dashboard.php');

} else {
    echo'Usuario Incorrecto';
}
?>
