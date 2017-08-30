<?php
	include("../query/cnx.php");
	connect();
	$contenido = "<page>

					<table border='1'>
						<tr>
						<th>RUT</th>
						<th>NOMBRE</th>
						<th>TELEFONO</th>
						<th>EMAIL</th>
						<th>CARRERA</th>
						<th>CARGO</th>
						<th>EMPRESA</th>
						<th>HORA</th>
						</tr>";
						$sql ="SELECT alumnos.rut as rut, alumnos.nombre as nombre, alumnos.appat as appat,
							   alumnos.apmat as apmat, alumnos.celular as celular, alumnos.email as email,
							   alumnos.carrera as carrera, cargos.nombre as cargo, empresas.nombre as empresa,
							   horarios.horario as hora from alumnos, cargos, empresas, horarios,
							   entrevistas where entrevistas.rut = alumnos.rut and
							   entrevistas.id_horario = horarios.id_horarios and
							   entrevistas.id_cargo = cargos.id_cargo and cargos.id_empresa = empresas.id_empresa";
						$ressql=mysql_query($sql);
                        while($rowitem=mysql_fetch_array($ressql))
                        {
							$contenido.="<tr>";
							$contenido.="<td>".$rowitem['rut']."</td>";
							$contenido.="<td>".$rowitem['nombre']."</td>";
							$contenido.="<td>".$rowitem['celular']."</td>";
							$contenido.="<td>".$rowitem['email']."</td>";
							$contenido.="<td>".$rowitem['carrera']."</td>";
							$contenido.="<td>".$rowitem['cargo']."</td>";
							$contenido.="<td>".$rowitem['empresa']."</td>";
							$contenido.="<td>".$rowitem['hora']."</td>";
							$contenido.="</tr>";

                        }
	$contenido.="</table>";
	$contenido.="</page>";


	require_once("html2pdf-4.4.0/html2pdf.class.php");
	/*El los parametros del constructir de HTML2PDF son:
	  Orientación (P es vertical, L horizontal),
	  tamaño de la hoja (A4 por defecto),
	  lenguaje (esta en formato csv, 'es' es español),
	  hay otros parametros, vease el codigo fuente de la libreria ("html2pdf.class.php")
	*/
	$pdf = new HTML2PDF('L','A4','es','UTF-8');
	$pdf->WriteHTML($contenido);
	$pdf->Output('feria_laboral.pdf');

?>
