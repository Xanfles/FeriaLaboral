<?php
	require_once("cnx.php");
	connect();
	$id_cargo = $_GET['id_cargo'];
	$sql = "select id_empresa from cargos where id_cargo = $id_cargo";
	$result = mysql_query($sql);
	if(mysql_num_rows($result)>0){
		while ($row = mysql_fetch_array($result)){
		$id_empresa = $row['id_empresa'];
		}
		$sql = "select * from horarios where id_empresa = $id_empresa and activo_horario = 1";
		$result = mysql_query($sql);
		if(mysql_num_rows($result)>0){
			while ($row = mysql_fetch_array($result)){
				$data[] = [
					'status' => 'ok',
					'id_horario' => $row['id_horarios'],
					'horario' => $row['horario']
				];
			}
		}else{
			$data[] = [
					'status' => 'fail',
					'message' => 'No existen horarios disponibles'
				];
		}
	}else{
		$data[] = [
					'status' => 'fail',
					'message' => 'Hubo un problema cargando horarios con la empresa'
				];
	}
	header("Context_Type: application/json");
	echo json_encode($data);
?>
