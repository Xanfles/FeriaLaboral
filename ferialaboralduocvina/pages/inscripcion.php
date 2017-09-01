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
                          <!--<tr>
                            <td><b>Apellido Materno</b></td>
                            <td><input class="form-control" type="text" name="apmat" placeholder="Apellido Materno" id="apmat_alumno" required/></td>
                          </tr>-->
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

                            <td rowspan="1" > <br><br> <center><img src="../media/img/ATENTO.png" height="50" width="100"> </center> <center><b> ATENTO - MOVISTAR </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="66"/> Ejecutivos de call center </center></td>
                            <td><center>PART TIME</center></td>
                            <td><center>Encargados de recibir llamados telefónicos a clientes tanto en el área de soporte técnico y comercial</center></td>
                            <td><center>Estudiantes de cualquier área</center></td>
                          </tr>

                          <tr>
                            <td rowspan="1" > <br><br> <center><img src="../media/img/MC_DONALDS.jpg" height="50" width="50"> </center> <center><b> MC DONALDS </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="69"/> Crew Operador </center></td>
                            <td><center>PART TIME </center></td>
                            <td><center>Atención a público</center></td>
                            <td><center>Estudiantes de cualquier área</center></td>
                          </tr>

                          <tr>
                            <td rowspan="1" > <br><br> <center><img src="../media/img/DOGGIS.png" height="50" width="50"> </center> <center><b> DOGGIS</b></center></td>
                            <td><center> <input type="radio" name="nombre" value="70"/>  Operario  </center></td>
                            <td><center>PART TIME </center></td>
                            <td><center>Operador multifuncional </center></td>
                            <td><center>Estudiantes de cualquier área</center></td>
                          </tr>
                          <tr>
                            <td rowspan="1" > <br><br> <center><img src="../media/img/accenture.jpg" height="50" width="100"> </center> <center><b> ACCENTURE </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="72"/> Ejecutivo Programa Trainee </center></td>
                            <td><center>PART TIME Y FULL TIME</center></td>
                            <td><center>Proyectos informáticos de gran envergadura alineados a industrias de Servicios Financieros (Banca, Seguros, entre otros) y Telecomunicaciones (Telco), aprendiendo alguno de los siguientes lenguajes de programación: Cobol, .NET, Java, Visual Basic, entre otros. Requisito conocimiento previo en programación.</center></td>
                            <td><center>Ing. Informática </center></td>
                          </tr>

                          
                          <tr>
                            <td> <br><br> <center><img src="../media/img/ORGANIZAME.jpg" height="50" width="100"> </center> <center><b> ORGANIZAME </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="82"/> Analista Customer Success </center></td>
                            <td><center>PART TIME</center></td>
                            <td><center>Atención usuarios canal interno. 
                                            Generación de informes.
                                          Levantamiento de información.
                                  Seguimiento usuarios críticos definidos por la compañía.
                                 </center></td>
                            <td><center>Relaciones Públicas mención Marketing
                                        Administración Financiera
                                    Ingeniería en Administración
                                    Ingeniería en Administración de Recursos Humanos </center></td>
                          </tr>


                          <tr>
                            <td rowspan="3" > <br><br> <center><img src="../media/img/ripley.png" height="100" width="150"> </center> <center><b> RIPLEY </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="107"/> ASESOR DE COMPRAS </center></td>
                            <td><center>PART TIME</center></td>
                            <td><center>Encargado de reposición y orden de los productos de un departamento de venta específico. Atención y asesoría a clientes.</center></td>
                            <td><center>Estudiantes de cualquier área</center></td>
                          </tr>
                          <tr>
                            <td><center> <input type="radio" name="nombre" value="108"/> CAJERO </center></td>
                            <td><center>PART TIME</center></td>
                            <td><center>Encargado de atención de clientes y transacciones en el sector de cajas.</center></td>
                            <td><center>Estudiantes de cualquier área</center></td>
                          </tr>
                          <tr>
                            <td><center> <input type="radio" name="nombre" value="109"/> VENDEDOR ESPECIALISTA </center></td>
                            <td><center>PART TIME</center></td>
                            <td><center>Encargado de ventas en departamentos específicos de la tienda. Atención personalizada a clientes</center></td>
                            <td><center>Estudiantes de cualquier área</center></td>
                          </tr>
                          <tr>
                            <td rowspan="2" > <br><br> <center><img src="../media/img/CONFERENCETOWN.png" height="75" width="150"> </center> <center><b> HOTEL CONFERENCE TOWN </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="24"/> GARZONES </center></td>
                            <td><center>PART TIME</center></td>
                            <td><center>TRABAJO EN RESTAURANTE</center></td>
                            <td><center>Estudiantes de cualquier área</center></td>
                          </tr>
                          <tr>
                            <td><center> <input type="radio" name="nombre" value="25"/> MUCAMAS </center></td>
                            <td><center>PART TIME</center></td>
                            <td><center>TRABAJO EN HABITACIONES</center></td>
                            <td><center>Estudiantes de cualquier área</center></td>
                          </tr>
                          <tr>
                            <td rowspan="1" > <br><br> <center><img src="../media/img/Jumbo.png" height="75" width="75"> </center> <center><b> JUMBO </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="117"/> Vendedor, Reponedor, Cajero, Auxiliar Bodega. </center></td>
                            <td><center>PART TIME</center></td>
                            <td><center>Trabajo de 20 horas semanales en Viña del Mar, Belloto,Valparaiso o Concón, de acuerdo a postulación de estudiante. </center></td>
                            <td><center>Estudiantes de cualquier área</center></td>
                          </tr>
                          <tr>
                            <td rowspan="1" > <br><br> <center><img src="../media/img/casaideas.png" height="75" width="75"> </center> <center><b> CASA IDEAS </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="93"/> Atencion cliente </center></td>
                            <td><center>PART TIME</center></td>
                            <td><center>Atención y operación ventas </center></td>
                            <td><center>Estudiantes de cualquier área</center></td>
                          </tr>
                          <tr>
                            <td rowspan="1" > <br><br> <center><img src="../media/img/ENJOY.png" height="75" width="75"> </center> <center><b> ENJOY </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="94"/> Atencion cliente </center></td>
                            <td><center>PART TIME Y FULL TIME</center></td>
                            <td><center>Anfitrión, garzón, crupier, otros. </center></td>
                            <td><center>Estudiantes de cualquier área</center></td>
                          </tr>
                          <tr>
                            <td rowspan="1" > <br><br> <center><img src="../media/img/Unimarc.png" height="75" width="75"> </center> <center><b> UNIMARC </b></center></td>
                            <td><center> <input type="radio" name="nombre" value="95"/> Operarios </center></td>
                            <td><center>PART TIME</center></td>
                            <td><center>Atención cliente, reponedor.</center></td>
                            <td><center>Estudiantes de cualquier área</center></td>
                          </tr>

                        </table>

                        </br>
                        </br>
                        </br>

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
                              <td><center> <input type="radio" name="nombre" value="61"/> Atención público </center></td>
                              <td><center>PLAZO FIJO</center></td>
                              <td><center>Área administrativa, atención publico apoyo logística temporada de fruta.</center></td>
                              <td><center>Comercio exterior, técnico en gestión logística, ingeniería en comercio exterior</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="62"/> Analista programador </center></td>
                              <td><center>Contrato indefinido</center></td>
                              <td><center>Área administrativa, apoyo en programación computacional</center></td>
                              <td><center>Analista programador computacional, ingeniería en conectividad y redes, ingeniería en informatica</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="63"/> Practicante  TI</center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Área administrativa, apoyo en programación computacional</center></td>
                              <td><center>Adm. De redes computacionales, Analista programador computacional, Ingeniería en conectividad y redes, Ingeniería en informática.</center></td>
                            </tr>
                            <tr> 
                              <td rowspan="2" > <br><br> <center><img src="../media/img/UNIVERSO.jpg" height="45" width="70"> </center> <center><b> UNIVERSO </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="64"/> Técnico o ingeniero en administración de empresa </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Cobranza, facturación y clasificación de documentos.</center></td>
                              <td><center>Técnico o Ing. En Administración de empresa</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="65"/> Diseñador Industrial </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Desarrollo de diseño, gestión productiva y planimetrías de juegos infantiles y mobiliario urbano </center></td>
                              <td><center>Diseño industrial</center></td>
                            </tr>
                            
                          
                            <tr>
                              <td rowspan="1" > <br><br> <center><img src="../media/img/REALCAPITAL.jpg" height="35" width="60"> </center> <center><b> REAL CAPITAL </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="67"/> Asistente comercial </center></td>
                              <td><center>Contrato indefinido</center></td>
                              <td><center>Área comercial, gestionar nuevos negocios, colaboración continua en todos los procesos de la empresa. </center></td>
                              <td><center>Administración de Empresas Mención Marketing
                                        Comercio Exterior
                                        Ingeniería en Comercio Exterior
                                        Ingeniería en Administración
                                        Técnico en Gestión Logística</center></td>
                            </tr>

                            <tr>
                              <td rowspan="2" > <br><br> <center><img src="../media/img/accenture.jpg" height="50" width="100"> </center> <center><b> ACCENTURE </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="71"/> Practicante Área Tecnología </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>ÁProgramar y desarrollar sistemas, disponibilidad horario fulltime.</center></td>
                              <td><center>Ing. Informática </center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="73"/> Analista </center></td>
                              <td><center>Contrato indefinido</center></td>
                              <td><center>Desarrollo de proyectos informáticos, se solicita 1 año de experiencia en Java u Oracle. </center></td>
                              <td><center>Ing. Informática </center></td>
                            </tr>
                                                                                 
                           
                            <tr>
                              <td rowspan="2" > <br><br> <center><img src="../media/img/manpower.jpg" height="35" width="60"> </center> <center><b> MANPOWER </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="74"/> Encargado Administrativo </center></td>
                              <td><center>PLAZO FIJO</center></td>
                              <td><center>Para nuestras diferentes empresas em periodos de verano EST</center></td>
                              <td><center>Egresados o Titulados de Administración de Empresas Mención Marketing, Administración de Recursos Humanos, Administración Financiera, Ingeniería en Administración de Recursos Humanos, Ingeniería en Administración, Ingeniería en Marketing.
                              </center></td>
                            </tr>

                            
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="75"/> Informatico </center></td>
                              <td><center>Contrato indefinido</center></td>
                              <td><center>Funciones varias de soporte</center></td>
                              <td><center>Ingeniero, técnico informatico o carreras a fín</center></td>
                            </tr>
                            



                            <tr>
                              <td rowspan="2" > <br><br> <center><img src="../media/img/BAKERTILLY.png" height="35" width="60"> </center> <center><b> BAKERTILLY </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="76"/> Practica de auditoria </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Area auditoria</center></td>
                              <td><center>Auditoría</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="77"/> Practica de contabilidad </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Area administración</center></td>
                              <td><center>Contador General</center></td>
                            </tr>


                            <tr>
                              <td rowspan="1" > <br><br> <center><img src="../media/img/MERCADITOALEGRE.png" height="35" width="60"> </center> <center><b> MERCADITO ALEGRE </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="78"/> Practica en Administración de Empresas.</center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Apoyo en área administrativa, contratos, remuneraciones, costos, otros.</center></td>
                              <td><center>Ing. o Técnico en Administración de Empresas Mención Marketing, Administración de Recursos Humanos, </center></td>
                            </tr>
                            
                            <tr>
                              <td rowspan="6" > <br><br> <center><img src="../media/img/ORGANIZAME.jpg" height="35" width="60"> </center> <center><b> ORGANIZAME </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="83"/> Jefe Customer Success </center></td>
                              <td><center>Full Time</center></td>
                              <td><center>Liderar, entender, controlar, iterar y maximizar conversión de Lead a usuario. 
Desarrollo de material de apoyo acorde para la activación de usuarios. 
Análisis e interacción de usuarios/aplicación para generar propuestas de mejoras. 
Desarrollo plan para levantamiento y seguimiento de fallas. 
Apoyo, control y definición de estrategias comerciales.</center></td>
                              <td><center>Ingeniería en Administración, Ingeniería en Administración de Recursos Humanos, Administración de Empresas Mención Marketing.</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="84"/> Analista programador </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Conocimientos en javascript y nociones avanzadas de programación web</center></td>
                              <td><center>Analista Programador Computacional, Ingeniería en informatica</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="85"/> Analista programador </center></td>
                              <td><center>PART TIME Y FULLTIME</center></td>
                              <td><center>Conocimientos en javascript y nociones avanzadas de programación web</center></td>
                              <td><center>Analista Programador Computacional, Ingeniería en informatica</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="79"/> Apoyo a Gerente General </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Administrar operaciones logísticas y equipo de trabajo asociado, optimizando recursos involucrados, de acuerdo a objetivos de la organización.</center></td>
                              <td><center>Técnico en Gestión Logística</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="80"/> Apoyo a Gerente General </center></td>
                              <td><center>Full time</center></td>
                              <td><center>Administrar operaciones logísticas y equipo de trabajo asociado, optimizando recursos involucrados, de acuerdo a objetivos de la organización.</center></td>
                              <td><center>Técnico en Gestión Logística</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="81"/> Analista Customer Success </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Atención usuarios canal interno. 
                                          Generación de informes.
                                          Levantamiento de información.
                                          Seguimiento usuarios críticos definidos por la compañía.
                                          </center></td>
                              <td><center>Relaciones Públicas mención Marketing
                                          Administración Financiera
                                          Ingeniería en Administración
                                          Ingeniería en Administración de Recursos Humanos </center></td>
                            </tr>



                            <tr>
                              <td rowspan="2" > <br><br> <center><img src="../media/img/chilquinta.jpg" height="35" width="60"> </center> <center><b> CHILQUINTA </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="86"/> Operarios </center></td>
                              <td><center>Full time</center></td>
                              <td><center>Tecnicos o profesional para trabajo en operaciones internas.</center></td>
                              <td><center>Escuela de Administración y Negocios e Informática y Telecomunicaciones.</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="87"/> Practicante </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Apoyo en área administrativa.</center></td>
                              <td><center>Área administrativa, informática y Recursos Humanos.</center></td>
                            </tr>
                            <tr>
                              <td rowspan="3"> <br><br> <center><img src="../media/img/STELSECURE.png" height="35" width="60"> </center> <center><b> STELSECURE </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="88"/> Soporte técnico </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Atender solicitudes técnicas, soporte telefónico y administración redes </center></td>
                              <td><center>Ingeniería en Conectividad y Redes, Administración de Redes Computacionales.</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="89"/> Administrador Web </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Administrar pagina web, diseño imagen corporativa.</center></td>
                              <td><center>Diseño Gráfico, Publicidad.</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="90"/> Atencion cliente</center></td>
                              <td><center>PLAZO FIJO</center></td>
                              <td><center>Mantención de cuentas clientes, responder teléfono.</center></td>
                              <td><center>Técnico en Administración de Empresas Mención Marketing, Administración de Recursos Humanos.</center></td>
                            </tr>
                            <tr>
                              <td rowspan="2"> <br><br> <center><img src="../media/img/IMECX.png" height="50" width="100"> </center> <center><b> IMECEX </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="91"/> Diseñadores Gráficos o Industriales </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Diseño de piezas gráficas, prototipos funcionales, material gráfico en soportes análogos y/o digitales.</center></td>
                              <td><center>Diseño Gráfico o Industrial.</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="92"/> Diseñadores Gráficos o Industriales</center></td>
                              <td><center>PLAZO FIJO</center></td>
                              <td><center>Diseño de piezas gráficas, prototipos funcionales, material gráfico en soportes análogos y/o digitales.</center></td>
                              <td><center>Diseño Gráfico o Industrial.</center></td>
                            </tr>
                            <tr>
                              <td rowspan="4"> <br><br> <center><img src="../media/img/LIFELON.gif" height="70" width="150"> </center> <center><b> LIFELON </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="96"/> Operarios</center></td>
                              <td><center>FULL TIME</center></td>
                              <td><center>Operaria de máquinas de costuras, máquinas para ensamblar productos</center></td>
                              <td><center>Experiencia en el área de costura manual, ensamble automático</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="97"/> Bodeguero </center></td>
                              <td><center>FULL TIME</center></td>
                              <td><center>Mantenimiento de bodega de productos, persona ordenada, manejo de computación nivel usuario.</center></td>
                              <td><center>Conocimientos en manejo de bodega.</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="98"/> Ordenadora </center></td>
                              <td><center>FULL TIME</center></td>
                              <td><center>Orden de productos, </center></td>
                              <td><center>Persona con mucha energía y ganas de trabajar</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="99"/> VENDEDORA </center></td>
                              <td><center>FULL TIME</center></td>
                              <td><center>Venta de productos línea mujer, atención a clientes, ordenada, responsable</center></td>
                              <td><center>Ventas, administración, marketing, etc.</center></td>
                            </tr>
                            <tr>
                              <td rowspan="1"> <br><br> <center><img src="../media/img/ESTUDIOJBM.png" height="70" width="140"> </center> <center><b> ESTUDIO CONTABLE JBM Y CIA. </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="100"/> CONTADOR GENERAL Y/O CONTADOR AUDITOR </center></td>
                              <td><center>Contrato indefinido</center></td>
                              <td><center>Realizar flujos de caja de los clientes y dar seguimiento a este, control de nómina de pagos , revisión de rendiciones de caja. proceso de conciliación bancaria, análisis de cuentas, revisión de libros contables, preparación de balances y estados financieros , otros.</center></td>
                              <td><center>Contabilidad General Mención Legislación Tributaria / Auditoría.</center></td>
                            </tr>
                                                                                   
                          
                            <tr>
                              <td rowspan="2"> <br><br> <center><img src="../media/img/SODIMAC.png" height="50" width="70"> </center> <center><b> SODIMAC </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="101"/> Vendedor </center></td>
                              <td><center>FULL TIME</center></td>
                              <td><center>Atender y asesorar clientes entregando información de productos y/o materiales, facilitando la elección de compra, participando además, en el carguío y despacho de la mercadería, administrando el área asignada, teniendo especial preocupación de mantener la verticalidad y rotulación (código / cantidad) de las mercaderías en los altillos.</center></td>
                              <td><center>Todas</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="102"/> Cajero </center></td>
                              <td><center>FULL TIME</center></td>
                              <td><center>Recibir el pago de productos y/o servicios de los clientes, tanto en cajas como  en módulo de auto atención (SCO), entregando una atención de calidad y cumpliendo con las conductas críticas y procedimientos del área establecidos por la empresa.</center></td>
                              <td><center>Todas</center></td>
                            </tr>
                            <tr>
                              <td rowspan="3"> <br><br> <center><img src="../media/img/zeke.png" height="50" width="70"> </center> <center><b> ZEKE </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="103"/> Analista/ Desarrollador  </center></td>
                              <td><center>FULL TIME</center></td>
                              <td><center> Definir y crear soluciones técnicas en la tecnología del proyecto. Identificar y construir pruebas de desarrollo que cubran el comportamiento requerido de los componentes técnicos. Comunicar el diseño de forma que los otros miembros del equipo lo comprendan.</center></td>
                              <td><center>Ing. En informática o Analista programador computacional</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="104"/> Administrador de Sistemas </center></td>
                              <td><center>FULL TIME</center></td>
                              <td><center>Implementar, configurar, mantener, monitorizar, documentar y asegurar el correcto funcionamiento de un sistema informático o algún aspecto de éste. Garantizar el tiempo de actividad, rendimiento, uso de recursos y la seguridad de los servidores que administra de forma dinámica.</center></td>
                              <td><center>Administración de Redes Computacionales o Ingeniería en conectividad y redes</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="105"/> Quality Assurance</center></td>
                              <td><center>FULL TIME</center></td>
                              <td><center> Diseño y ejecución integral de pruebas. Medición sistemática, comparación con estándares y seguimiento de los procesos.  Prevenir errores durante el proceso de desarrollo del producto.</center></td>
                              <td><center>Ing. En informática o Analista programador computacional</center></td>
                            </tr>
                           
                            <tr>
                              <td rowspan="4"> <br><br> <center><img src="../media/img/Jumbo.png" height="20" width="70"> </center> <center><b> JUMBO </b></center></td>
                              <td><center> <input type="radio" name="nombre" value="116"/> Practicante en área Publicidad.</center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Apoyo en área operativa de marketing y comunicaciones.</center></td>
                              <td><center>Publicidad y Relaciones Públicas Mención Marketing.</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="115"/> Practicante Administración de Redes.  </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Apoyo en área operativa y computacional, desarrollo de programación entre otros. </center></td>
                              <td><center>Administración de Redes Computacionales</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="114"/> Practicante apoyo área Visual. </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Apoyo en área de Diseño, decoración, visual, entre otras funciones.</center></td>
                              <td><center>Diseño de ambientes o Diseño de Vestuario.</center></td>
                            </tr>
                            <tr>
                              <td><center> <input type="radio" name="nombre" value="113"/> Practicante de apoyo en área de Recursos Humanos.</center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Gestión de personas, área administrativa.</center></td>
                              <td><center>Técnico e Ingenieros en Administración de empresas en RRHH.</center></td>
                            </tr>
                            <tr>
                              <td rowspan="1"> <br><br> <center><img src="../media/img/CONFERENCETOWN.png" height="30" width="50"> </center> <center><b> HOTEL CONFERENCE TOWN</b></center></td>
                              <td><center> <input type="radio" name="nombre" value="112"/> Practicante en área administrativa. </center></td>
                              <td><center>Práctica profesional</center></td>
                              <td><center>Practicante para apoyar labores administrativas, gestión de eventos, atención público entre otros.</center></td>
                              <td><center>Técnico o Ingeniería de Carreras en Administración de Empresas Mención Marketing o  Recursos Humanos.</center></td>
                            </tr>
                            <tr>
                              <td rowspan="1"> <br><br> <center><img src="../media/img/NIELSEN.jpg" height="30" width="50"> </center> <center><b> NIELSEN</b></center></td>
                              <td><center> <input type="radio" name="nombre" value="106"/> Técnico Instalación y Mantención Domiciliaria VTR. </center></td>
                              <td><center>Contrato indefinido</center></td>
                              <td><center>Empresa contratista de VTR, busca profesionales egresados o titulados para la instalación y mantención domiciliaria de servicios VTR: Telefonía, Tv Cable e internet.</center></td>
                              <td><center>Administración de Redes Computacionales, Técnico en Telecomunicaciones, Analista Programador Computacional, Ingeniería en Conectividad y Redes, Ingeniería en Informática.</center></td>
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
