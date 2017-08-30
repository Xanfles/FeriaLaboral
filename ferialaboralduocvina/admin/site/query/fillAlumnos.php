<?php
require_once("cnx.php");
connect();

if(isset($_GET['action']) && !empty($_GET['action'])) {
  $action = $_GET['action'];
  switch ($action) {
    case 'alumnos':
      fillAlumnos();
      break;
    case 'todo':
      fillTODO();
      break;
    default:
      # code...
      break;
  }
}

function fillTODO(){
	$sql ="SELECT alumnos.rut as rut, alumnos.nombre as nombre, alumnos.appat as appat,
		   alumnos.apmat as apmat, alumnos.celular as celular, alumnos.email as email,
		   alumnos.carrera as carrera, cargos.nombre as cargo, empresas.nombre as empresa,
		   horarios.horario as hora from alumnos, cargos, empresas, horarios,
		   entrevistas where entrevistas.rut = alumnos.rut and
		   entrevistas.id_horario = horarios.id_horarios and
		   entrevistas.id_cargo = cargos.id_cargo and cargos.id_empresa = empresas.id_empresa";
	$result = mysql_query($sql);
	while($row = mysql_fetch_array($result)){
		$data [] = [
			'rut' => $row['rut'],
			'nombre' => $row['nombre'].' '.$row['appat'].' '.$row['apmat'],
			'celular' => $row['celular'],
			'email' => $row['email'],
			'carrera' => $row['carrera'],
			'cargo' => $row['cargo'],
			'empresa' => $row['empresa'],
			'hora' => $row['hora']
		];
	}
	header("Context_Type: application/json");
	echo json_encode($data);
}

function fillAlumnos(){
	$sql = "select * from alumnos";
	$result = mysql_query($sql);
	while ($row = mysql_fetch_array($result)){
	$data[] = [
		'rut' => $row['rut'],
		'nombre' => $row['nombre'],
		'appat' => $row['appat'],
		'apmat' => $row['apmat'],
		'celular' => $row['celular'],
		'email' => $row['email'],
		'carrera' => $row['carrera']
	];
}
header("Context_Type: application/json");
echo json_encode($data);
}
?>
