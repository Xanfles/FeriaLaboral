<?php
	require_once("cnx.php");
	connect();
	$rut = $_POST['rut'];
	$nombre = $_POST['nombre'];
	$appat = $_POST['appat'];
	$apmat = $_POST['apmat'];
	$fono = $_POST['fono'];
	$email = $_POST['email'];
	$carrera = $_POST['carrera'];
	$id_cargo = $_POST['id_cargo'];
	$id_horario = $_POST['id_horario'];

		$sql = "select * from `alumnos` where rut = '$rut'";
		$result = mysql_query($sql);
		if(mysql_num_rows($result)>0){
			$sql = "UPDATE `alumnos` SET `nombre`='$nombre',`appat`='$appat',`apmat`='$apmat',
									 `celular`='$fono',`email`='$email',`carrera`='$carrera'
							     WHERE rut = '$rut'";
			$result = mysql_query($sql);
			if($result){
				$sql = "UPDATE `horarios` SET `activo_horario`= 0 WHERE id_horarios = $id_horario";
				$result = mysql_query($sql);
				if($result){
					$sql = "INSERT INTO `entrevistas`(`rut`, `id_cargo`, `id_horario`)
					VALUES ('$rut',$id_cargo,$id_horario)";
					$result = mysql_query($sql);
					if($result){
						$data[] = [
							'status' => 'ok',
							'message' => 'Su registro ha sido validado.'
						];
					}else{
						$data[] = [
							'status' => 'fail',
							'message' => 'Hubo un problema: '
						];
					}
				}else{
					$data[] = [
						'status' => 'fail',
						'message' => 'Hubo un problema: '
					];
				}
			}

		}else{

		$sql = "INSERT INTO `alumnos`(`rut`, `nombre`, `appat`, `apmat`, `celular`, `email`, `carrera`)
			    VALUES ('$rut','$nombre','$appat','$apmat','$fono','$email','$carrera')";
		$result = mysql_query($sql);
		if($result){
			$sql = "UPDATE `horarios` SET `activo_horario`= 0 WHERE id_horarios = $id_horario";
			$result = mysql_query($sql);
			if($result){
				$sql = "INSERT INTO `entrevistas`(`rut`, `id_cargo`, `id_horario`)
			    VALUES ('$rut',$id_cargo,$id_horario)";
				$result = mysql_query($sql);
				if($result){
					$data[] = [
						'status' => 'ok',
						'message' => 'Su registro ha sido validado.'
					];
				}else{
					$data[] = [
						'status' => 'fail',
						'message' => 'Hubo un problema: '
					];
				}
			}else{
				$data[] = [
						'status' => 'fail',
						'message' => 'Hubo un problema: '
					];
			}
		}else{
			$data[] = [
						'status' => 'fail',
						'message' => 'Hubo un problema: '
					];
		}
		}

	header("Context_Type: application/json");
	echo json_encode($data);

?>
