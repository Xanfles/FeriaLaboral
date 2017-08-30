<!DOCTYPE html>
<html lang="es">
  <head>
    <?php require_once("../include/header.php"); ?>
    <title>Inscripcion</title>
  </head>
  <body>
<?php  require_once("../include/nav.php");?>
  <body>

<div class="container">
	<div class="row">
		<section>
        <div class="wizard">
            <div class="wizard-inner">
                <div class="connecting-line"></div>
                <ul class="nav nav-tabs" role="tablist">

                    <li role="presentation" class="active">
                        <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="Datos Alumno">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-user"></i>
                            </span>
                        </a>
                    </li>

                    <li role="presentation" class="disabled">
                        <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Empresas y Ofertas">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-blackboard"></i>
                            </span>
                        </a>
                    </li>
                    <li role="presentation" class="disabled">
                        <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" title="Horarios Disponibles">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-calendar"></i>
                            </span>
                        </a>
                    </li>

                    <li role="presentation" class="disabled">
                        <a href="#complete" data-toggle="tab" aria-controls="complete" role="tab" title="Finalizar">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-ok"></i>
                            </span>
                        </a>
                    </li>
                </ul>
            </div>

            <form role="form">
                <div class="tab-content">
                    <div class="tab-pane active" role="tabpanel" id="step1">
                      <h3><b>Datos Alumno</b></h3>
                      <h5>Los campos son obligatorios</h5>
                      <div class="col-md-6 col-md-offset-3">
                        <table class="table table-sm">
                          <tbody>
                          <tr>
                            <td><b>Rut</b></td>
                            <td><input class="form-control" type="text" name="rut" placeholder="11111111-1" pattern="[0-9]{7,8}-{0-9Kk}{1}" id="rut_alumno" required/></td>
                          </tr>
                          <tr>
                            <td><b>Nombre</b></td>
                            <td><input class="form-control" type="text" name="nombre" placeholder="Nombre" id="nombre_alumno" required/></td>
                          </tr>
                          <tr>
                            <td><b>Apellido Paterno</b></td>
                            <td><input class="form-control" type="text" name="appat" placeholder="Apellido Paterno" id="appat_alumno" required/></td>
                          </tr>
                          <tr>
                            <td><b>Apellido Materno</b></td>
                            <td><input class="form-control" type="text" name="apmat" placeholder="Apellido Materno" id="apmat_alumno" required/></td>
                          </tr>
                          <tr>
                            <td><b>Celular</b></td>
                            <td><input class="form-control" type="text" name="celular" placeholder="Celular" id="celular_alumno" required/></td>
                          </tr>
                          <tr>
                            <td><b>Email</b></td>
                            <td><input class="form-control" type="text" name="email" placeholder="Email" id="email_alumno" required=""></td>
                          </tr>
                          <tr>
                            <td><b>Carrera</b></td>
                            <td><input class="form-control" type="text" name="carrera" placeholder="Carrera" id="carrera_alumno" required=""></td>
                          </tr>
                        </tbody>
                        </table>
                      </div>

                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-primary next-step">Siguiente</button></li>
                        </ul>
                    </div>

                    <div class="tab-pane" role="tabpanel" id="step2">
                      <h3><b>Empresas</b></h3>
                      <h5>Debe escoger solo una empresa</h5>
                      <center><h5><b>OFERTAS PART TIME</b></h5></center>
                      <br>
                        <table class="table table-bordered">
                          <tr>
                            <td><center><b>EMPRESA</b></center></td>
                            <td><center><b>CARGO</b></center></td>
                            <td><center><b>OFERTA</b></center></td>
                            <td><center><b>FUNCIONES</b></center></td>
                            <td><center><b>CARRERA A FINES</b></center></td>
                          </tr>
                          <tr>

                            <td rowspan="1" > <br><br> <center><img src="../media/img/SODIMAC.png" height="50" width="50"> </center> <center><b> SODIMAC </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="26"/> Vendedor Part time </center></td>
                            <td><center>Laboral</center></td>
                            <td><center>Venta de productos de construcción directo a público</center></td>
                            <td><center>Estudiantes de cualquier área</center></td>
                          </tr>
                          <tr>
                            <td rowspan="1" > <br><br> <center><img src="../media/img/MC_DONALDS.jpg" height="50" width="50"> </center> <center><b> MC DONALDS </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="33"/> Crew Operador </center></td>
                            <td><center>PART TIME Verano</center></td>
                            <td><center>Atención a público, cajero, cocina, limpieza</center></td>
                            <td><center>Todas Califican</center></td>
                          </tr>
                          <tr>
                            <td rowspan="3" > <br><br> <center><img src="../media/img/casaideas.png" height="50" width="50"> </center> <center><b> CASA IDEAS </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="7"/> Asistente a cliente  </center></td>
                            <td><center>PART TIME Verano</center></td>
                            <td><center>La función se orientan al servicio al cliente, además de mantener el orden de la tienda. Asesorar y atender al cliente siguiendo protocolos de servicio</center></td>
                            <td><center>Todas Califican</center></td>
                          </tr>
                          <tr>
                            <td><center> <input type="radio" name="nombre" value="9"/> Cajeros </center></td>
                            <td><center>PART TIME Verano</center></td>
                            <td><center>Manejo de dinero y control de pérdidas. Realizar arqueos y cuadraturas de caja</center></td>
                            <td><center>Todas Califican</center></td>
                          </tr>
                          <tr>
                            <td><center> <input type="radio" name="nombre" value="10"/> Reponedor Nocturno </center></td>
                            <td><center>PART TIME Verano</center></td>
                            <td><center>Reponer mercadería en las distintas zonas de la tienda.   Reponer mercadería en las distintas zonas de la tienda</center></td>
                            <td><center>Todas Califican</center></td>
                          </tr>
                          <tr>
                            <td rowspan="2" > <br><br> <center><img src="../media/img/DOGGIS.jpg" height="50" width="50"> </center> <center><b> DOGGIS </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="35"/> OPERARIOS </center></td>
                            <td><center>LABORAL DEFINIDA</center></td>
                            <td><center>TRABAJAR EN LAS DISTINTAS ESTACIONES DENTRO DEL LOCAL</center></td>
                            <td><center>Todas Califican</center></td>
                          </tr>
                          <tr>
                            <td><center> <input type="radio" name="nombre" value="36"/> ENCARGADO DE LOCAL </center></td>
                            <td><center>PRACTICA</center></td>
                            <td><center>ADMINISTRACION DE TURNOS DE TRABAJO</center></td>
                            <td><center>ADMINITRACION DE EMPRESA</center></td>
                          </tr>
                          <tr>
                            <td> <br><br> <center><img src="../media/img/ENTEL.jpg" height="50" width="50"> </center> <center><b> ENTEL </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="19"/> EJECUTIVO DE VENTAS </center></td>
                            <td><center>Laboral Indefinido</center></td>
                            <td><center>Ejecutivos de Ventas Servicios Entel</center></td>
                            <td><center>Todas Califican</center></td>
                          </tr>
                          <tr>
                            <td rowspan="2" > <br><br> <center><img src="../media/img/OHiggins.png" height="50" width="50"> </center> <center><b> HOTEL O´HIGGINS </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="20"/> MUCAMA </center></td>
                            <td><center>Laboral Definido</center></td>
                            <td><center>Mucama de Hotel, aseo y ornato habitaciones</center></td>
                            <td><center>Todas Califican</center></td>
                          </tr>
                          <tr>
                            <td><center> <input type="radio" name="nombre" value="21"/> GARZONES </center></td>
                            <td><center>Laboral Definido</center></td>
                            <td><center>Garzón de Restaurant Hotel, excelente disposición y atención al cliente</center></td>
                            <td><center>Todas Califican</center></td>
                          </tr>
                        </table>

                        <br>
                        <br>

                        <center><h5><b>OFERTAS PRÁCTICA O LABORALES DEFINIDAS O INDEFINIDAS</b></h5></center>
                        <br>
                          <table class="table table-bordered">
                            <tr>
                              <td><center><b>EMPRESA</b></center></td>
                              <td><center><b>CARGO</b></center></td>
                              <td><center><b>OFERTA</b></center></td>
                              <td><center><b>FUNCIONES</b></center></td>
                              <td><center><b>CARRERA A FINES</b></center></td>
                            </tr>
                            <tr>
                              <td rowspan="3" > <br><br> <center><img src="../media/img/TPS.jpg" height="45" width="70"> </center> <center><b> TPS </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="27"/> Ingeniero Informático </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Dar apoyo a los proceso de TI</center></td>
                              <td><center>Ing. En Informática</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="28"/> Asistente RRHH </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Dar Apoyo al área de Desarrollo Organizacional</center></td>
                              <td><center>Adm. de RRHH</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="59"/> Atención Publico Temporada de fruta </center></td>
                              <td><center>Laboral definida</center></td>
                              <td><center>Dar apoyo a las necesidades de los departamentos ZEAL y Fruta, en la temporada de verano</center></td>
                              <td><center>Comercio Exterior</center></td>
                            </tr>
                            <tr>
                              <td rowspan="4" > <br><br> <center><img src="../media/img/ENJOY.png" height="45" width="70"> </center> <center><b> ENJOY </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="47"/> Garzón </center></td>
                              <td><center>Laboral definida</center></td>
                              <td><center>Atender al cliente ofreciendo y entregando un servicio del área de AA&BB</center></td>
                              <td><center>Todas Califican</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="48"/> Anfitrión de tragamonedas </center></td>
                              <td><center>Laboral definida</center></td>
                              <td><center>Orientar y ofrecer al cliente el servicio de transbank y solucionar requerimientos mínimos de las máquinas de juego</center></td>
                              <td><center>Todas Califican</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="49"/> Asistente administrativo Hotel </center></td>
                              <td><center>Laboral definida</center></td>
                              <td><center>Administrar los servicios requeridos en el área de hospedaje y supervisión del personal a cargo</center></td>
                              <td><center>Titulado de Tec. o Ing. en Administración de Empresas</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="50"/> Práctica RRHH </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Apoyar en los trámites administrativos del equipo de Capital humano, principalmente en planificación de turnos y D.O</center></td>
                              <td><center>Administración de RRHH</center></td>
                            </tr>
                            <tr>
                              <td rowspan="6" > <br><br> <center><img src="../media/img/chilquinta.jpg" height="35" width="60"> </center> <center><b> CHILQUINTA </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="11"/> Ingeniero informático </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Apoyo al área de sistemas y TI</center></td>
                              <td><center>Ingeniería en Informática</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="12"/> Técnico en redes </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Apoyo al área de sistemas y TI</center></td>
                              <td><center>Administración de redes Computacionales</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="13"/> Relacionador Público </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Apoyo al área de comunicaciones</center></td>
                              <td><center>Relaciones Públicas</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="14"/> Administrador de empresas </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Apoyo Administrativo</center></td>
                              <td><center>Administración de empresas</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="15"/> Analista de estudios oganizacional </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Apoyo Gerencia de personas</center></td>
                              <td><center>Administración de Recursos Humanos</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="16"/> Analista Calidad de Demanda  </center></td>
                              <td><center>Laboral Indefinido</center></td>
                              <td><center>Maximizar la correcta medición de consumos para la óptima facturación de los cargos de energía y potencia mensual de productos, con tarifa de Demanda, Smartmeters y/o similar</center></td>
                              <td><center>Titulado Ing. en Administración de empresas</center></td>
                            </tr>
                            <tr>
                              <td rowspan="4" > <br><br> <center><img src="../media/img/RADISSON.png" height="35" width="60"> </center> <center><b> RADISSON </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="60"/> RECEPCIONISTA </center></td>
                              <td><center>Laboral Definida</center></td>
                              <td><center>Recepcionar y atender a los huéspedes del hotel en sus necesidades, cumpliendo los estándares y procedimientos de la compañía a nivel nacional e internacional</center></td>
                              <td><center>Titulado Administración Hotelera / o Administración de Empresas con Inglés Avanzado</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="23"/> GARZON  </center></td>
                              <td><center>Part-Time / Laboral Definida</center></td>
                              <td><center>Proveer el servicio de montaje y atención de clientes en eventos y outlets  del Hotel, brindando un servicio de excelencia</center></td>
                              <td><center>Todas Calific nivel inglés avanzado</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="24"/> MUCAMA / ASEADORA </center></td>
                              <td><center>Part-Time / Laboral Definida</center></td>
                              <td><center>Realizar las labores de limpieza y orden de habitaciones y pasillos de estas cumpliendo con los estándares establecidos por la compañía a nivel nacional e internacional para brindar un servicio superior a los huéspedes</center></td>
                              <td><center>Todas Califican</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="25"/> COPERO </center></td>
                              <td><center>Part-Time / Laboral Definida</center></td>
                              <td><center>Mantener el orden e higiene de los materiales e infraestructura de la cocina del Hotel, casino del personal, área de servicio de A&B y salas de basura</center></td>
                              <td><center>Todas Califican</center></td>
                            </tr>
                            <tr>
                              <td rowspan="2" > <br><br> <center><img src="../media/img/ultramar.jpg" height="35" width="60"> </center> <center><b> ULTRAMAR </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="31"/> Comercio Exterior </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Encargado de procesos</center></td>
                              <td><center>Comercio Exterior</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="32"/> Contabilidad </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Analista contables, cobranza</center></td>
                              <td><center>Contabilidad</center></td>
                            </tr>
                            <tr>
                              <td rowspan="2" > <br><br> <center><img src="../media/img/DIB.PNG" height="35" width="60"> </center> <center><b> DIB </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="17"/> Diseñador Gráfico </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Diseñar requerimientos área Marketing</center></td>
                              <td><center>Diseñador Gráfico</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="18"/> RRPP </center></td>
                              <td><center>Laboral Indefinido</center></td>
                              <td><center>Dirigir la estrategia de comunicaciones y eventos de la Empresa</center></td>
                              <td><center>Titulado  Relaciones Públicas o Publicidad</center></td>
                            </tr>
                            <tr>
                              <td rowspan="4" > <br><br> <center><img src="../media/img/demaria.jpg" height="35" width="60"> </center> <center><b> DEMARIA </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="1"/> Analista Contable </center></td>
                              <td><center>Laboral Definido</center></td>
                              <td><center>Apoyar en las tareas del área de contabilidad</center></td>
                              <td><center>Titulado Contador general - Contador Auditor</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="2"/> Administrativo de Bodega </center></td>
                              <td><center>Laboral Definido</center></td>
                              <td><center>Recepcionar y coordinar pedidos de bodega</center></td>
                              <td><center>Titulado Administrador de empresas o Administrador logístico</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="3"/> Pañolero </center></td>
                              <td><center>Laboral Definido</center></td>
                              <td><center>Encargado de labores de pañol</center></td>
                              <td><center>Titulado  Administrativo logístico o Técnico en Logística</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="4"/> Práctica Finanzas </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Ayudar en las labores del área de finanzas</center></td>
                              <td><center>Administración de empresas, Contabilidad General, Administración financiera</center></td>
                            </tr>
                            <tr>
                              <td rowspan="2" > <br><br> <center><img src="../media/img/PROPAL.png" height="35" width="60"> </center> <center><b> PROPAL </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="51"/> Asistente Contable </center></td>
                              <td><center>Laboral Definida</center></td>
                              <td><center>Digitación de Facturas o documentos contables en general</center></td>
                              <td><center>Titulado de Tec. o Ing. en Administración de Empresas</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="52"/> Técnico en Telecomunicaciones </center></td>
                              <td><center>Laboral definida</center></td>
                              <td><center>Soporte Informático</center></td>
                              <td><center>Titulado de Adm. De redes computacionales</center></td>
                            </tr>
                            <tr>
                              <td rowspan="1"> <br><br> <center><img src="../media/img/BAKERTILLY.jpg" height="35" width="60"> </center> <center><b> BAKERTILLY </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="34"/> Auditor </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Apoyar gestión en auditoría externa</center></td>
                              <td><center>Auditoría</center></td>
                            </tr>
                            <tr>
                              <td rowspan="1"> <br><br> <center><img src="../media/img/santander.png" height="20" width="50"> </center> <center><b> SANTANDER </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="53"/> Ejecutivos de Venta </center></td>
                              <td><center>Laboral</center></td>
                              <td><center>Venta de Servicios Bancarios, atención clientes y empresas</center></td>
                              <td><center>Titulado preferentemente de la Escuela de Administración y Negocios</center></td>
                            </tr>
                            <tr>
                              <td rowspan="2"> <br><br> <center><img src="../media/img/TECNORED.jpg" height="70" width="70"> </center> <center><b> TECNORED </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="29"/> Practicante Área Administrativa </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Apoyar el área adnministrativa de la Empresa</center></td>
                              <td><center>Escuela de Administración y Negocios.</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="30"/> ASISTENTE COMERCIAL </center></td>
                              <td><center>Laboral Definida</center></td>
                              <td><center>Apoyar el área comercial de la Empresa</center></td>
                              <td><center>Escuela de Administración y Negocios</center></td>
                            </tr>
                            <tr>
                              <td rowspan="6"> <br><br> <center><img src="../media/img/manpower.jpg" height="70" width="70"> </center> <center><b> MANPOWER </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="41"/> Analista contador </center></td>
                              <td><center>Laboral Definida</center></td>
                              <td><center>Labores de contabilidad, facturación y administrativas</center></td>
                              <td><center>Contador</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="42"/> Secretaria </center></td>
                              <td><center>Laboral Definida</center></td>
                              <td><center>Labores secretariales como atención central telefónica, correspondencia, archivo, coordinación reuniones, fotocopiado, etc</center></td>
                              <td><center>Titulado Escuela  Administración y Negocios</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="43"/> Ejecutiva </center></td>
                              <td><center>Laboral Definida</center></td>
                              <td><center>Coordinación de viajes. Tareas Administrativas</center></td>
                              <td><center>Titulado  Escuela  Administración y Negocios</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="44"/> Vendedor Promotor </center></td>
                              <td><center>Laboral Indefinida</center></td>
                              <td><center>Promocionar y aumentar la venta de los productos de la marca, dar cumplimiento a las metas solicitadas, mantener orden y stock de productos</center></td>
                              <td><center>Titulado Técnico en Administración de empresas o Ingeniero</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="45"/> Bodeguero </center></td>
                              <td><center>Laboral Indefinida</center></td>
                              <td><center>Control de existencia, inventario, despacho, carga y descarga de Productos. Prestar apoyo a distintas área de la bodega</center></td>
                              <td><center>Técnico en Logística</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="46"/> Administrativo </center></td>
                              <td><center>Laboral Definida</center></td>
                              <td><center>Responsable de realizar tareas administrativas y de gestión básica, recibiendo, registrando y Transmitiendo información y documentación/Apoya en labores de control de gestión</center></td>
                              <td><center>Escuela de Administración y Negocios</center></td>
                            </tr>
                            <tr>
                              <td rowspan="2"> <br><br> <center><img src="../media/img/accenture.jpg" height="50" width="70"> </center> <center><b> ACCENTURE </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="5"/> Desarrollador </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Desarrollar sistemas para clientes de servicios financieros y/o telecomunicaciones</center></td>
                              <td><center>Informática</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="6"/> Desarrollador </center></td>
                              <td><center>Laboral Definido</center></td>
                              <td><center>Desarrollar sistemas para clientes de servicios financieros y/o telecomunicaciones</center></td>
                              <td><center>Titulado  Informática</center></td>
                            </tr>
                            <tr>
                              <td rowspan="4"> <br><br> <center><img src="../media/img/InfoRedChile.png" height="50" width="70"> </center> <center><b> INFORED </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="37"/> Analista Programador </center></td>
                              <td><center>Práctica</center></td>
                              <td><center> Programación en Php (Codeigniter)/Manejo de Base de Datos (Mysql)/Ejecución de pruebas unitarias y de integración</center></td>
                              <td><center>Ingeniería en informática  / Analista Programador</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="38"/> Diseñador Gráfico </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Diseño web/Diseñar ilustraciones, avisos y apoyo gráficos en general/Manejo de software de diseño como: Adobe illustrator, Photoshop, otros</center></td>
                              <td><center>Diseñador Gráfico</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="39"/> Marketing / RRPP </center></td>
                              <td><center>Práctica</center></td>
                              <td><center> Dirigir la estrategia de comunicaciones/Manejo de redes sociales/Campañas de marketing</center></td>
                              <td><center>Relaciones Públicas Mención Marketing. / Publicidad</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="40"/> Audiovisual </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Creación y desarrollo de contenidos audiovisuales y animaciones</center></td>
                              <td><center>Técnico Audiovisual, Comunicación Audiovisual,  Animación Digital</center></td>
                            </tr>
                            <tr>
                              <td rowspan="3"> <br><br> <center><img src="../media/img/INNERVYCS.png" height="20" width="70"> </center> <center><b> INNERVYCS </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="56"/> Diseñador Gráfico/industrial </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Orientación a producto</center></td>
                              <td><center>Diseñador industrial</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="57"/> Informática  </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Programación en PHP, aplicaciones móviles. ITO, bases de datos, redes</center></td>
                              <td><center>Electrónica, Informática</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="58"/> RRPP </center></td>
                              <td><center>Práctica</center></td>
                              <td><center>Marketing, canales de distribución, ventas, promoción</center></td>
                              <td><center>Negocios</center></td>
                            </tr>
                            <tr>
                              <td rowspan="2"> <br><br> <center><img src="../media/img/CLINICA.jpg" height="30" width="50"> </center> <center><b> CLÍNICA CIUDAD DEL MAR </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="54"/> Administrativo de recepción de bodega </center></td>
                              <td><center>Laboral Indefinida</center></td>
                              <td><center>Recepcionar mercadería y su documentación tributaria, ingresar oportunamente a sistema Medisyn, disponibilizar la mercadería para su correcto almacenamiento, control documentario</center></td>
                              <td><center>Tecnico en logística</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="55"/> Recepcionista de consultas médicas </center></td>
                              <td><center>Laboral Definida - Turnos Rotativos</center></td>
                              <td><center>Recibir al paciente, emitir órdenes de atención y orientar en materias de su competencia</center></td>
                              <td><center>Técnico en Administración de Empresas</center></td>
                            </tr>

                          </table>

                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-default prev-step">Anterior</button></li>
                            <li><button type="button" class="btn btn-primary next-step2">Siguiente</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="step3">
                    <h3><b>Horarios</b></h3>
                    <h5><b>Debe escoger una hora disponible</b></h5>

                    <div class="col-md-6 col-md-offset-3">
                      <table class="table table-bordered" id="tabla_horas">
                        <!--<tr>
                          <td><center> <input type="radio" name="nombre" value="1"/> </center></td>
                          <td></td>
                        </tr>-->
                        <!-- La tabla se llena por js por eso aqui nose ve codigo-->
                      </table>
                    </div>
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-default prev-step">Anterior</button></li>
                            <li><button type="button" class="btn btn-primary next-step3">Siguiente</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="complete">
                        <center><h1>Completado</h1>
                        <h1><b><p id="mensaje"></p></b></h1></center>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </form>
        </div>
    </section>
   </div>
</div>

<?php require_once("../include/footer.php"); ?>

</body>
</html>
