$(document).ready(function () {
    //Initialize tooltips
    $('.nav-tabs > li a[title]').tooltip();

    //Wizard
    $('a[data-toggle="tab"]').on('show.bs.tab', function (e) {

        var $target = $(e.target);

        if ($target.parent().hasClass('disabled')) {
            return false;
        }
    });

    $(".next-step").click(function (e) {
      if($('#rut_alumno').val()=="" || $('#nombre_alumno').val()==""
      || $('#appat_alumno').val()=="" || $('#apmat_alumno').val()==""
      || $('#celular_alumno').val()=="" || $('#email_alumno').val()==""
      || $('#carrera_alumno').val()==""){

        alert("Debe completar todos los campos");

      }else {
        var $active = $('.wizard .nav-tabs li.active');
        $active.next().removeClass('disabled');
        nextTab($active);
      }
      });

      $(".next-step2").click(function(e){
        if (! $('input[name=nombre]').is(':checked')) {

          //alert($('input[name=nombre]:checked').val());
          alert("Debe seleccionar un cargo");

        }else {
          cargarDatos();
          var $active = $('.wizard .nav-tabs li.active');
          $active.next().removeClass('disabled');
          nextTab($active);
        }
      });

      $(".next-step3").click(function(e){
        if (! $('input[name=hora]').is(':checked')) {

          alert("Debe seleccionar una hora");

        }else {
          sendData();
          //alert($('input[name=hora]:checked').val());
          var $active = $('.wizard .nav-tabs li.active');
          $active.next().removeClass('disabled');
          nextTab($active);

        }
      });

    $(".prev-step").click(function (e) {

        var $active = $('.wizard .nav-tabs li.active');
        prevTab($active);

    });
});

function nextTab(elem) {
    $(elem).next().find('a[data-toggle="tab"]').click();
}
function prevTab(elem) {
    $(elem).prev().find('a[data-toggle="tab"]').click();
}

function cargarDatos(){
  //alert("entre");
      items="<tr><td></td><td><center><b>HORAS DISPONIBLES</b></center></td></tr>";
      var id_cargo = $('input[name=nombre]:checked').val();
      $.getJSON("../admin/site/query/fillHorarios.php?id_cargo="+id_cargo,function(data, status){
        $.each(data,function(index,item){
          //items+="<option value='"+item.id_tipo_giro+"'>"+item.nombre_tipo_giro+"</option>";
          if (item.status == "fail") {
            alert("No hay horarios disponibles");
          }else {
              items+='<tr><td><center> <input type="radio" name="hora" value="'+item.id_horario+'"> </center></td><td>'+item.horario+'</td></tr>';
          }

          //alert(items);
        });
        $("#tabla_horas").html(items);
      });
    }

function sendData(){
  dataString = "rut="+$('#rut_alumno').val()+"&nombre="+$('#nombre_alumno').val();
        dataString += "&appat="+$('#appat_alumno').val()+"&apmat="+$('#apmat_alumno').val();
        dataString += "&fono="+$('#celular_alumno').val()+"&email="+$('#email_alumno').val();
        dataString += "&carrera="+$('#carrera_alumno').val()+"&id_cargo="+$('input[name=nombre]:checked').val()
        dataString += "&id_horario="+$('input[name=hora]:checked').val();

        //alert(dataString);
        $.ajax({
          url: "../admin/site/query/addEntrevista.php",
          data: dataString,
          type: "post",
          beforeSend: function(data){
            //alert("voy enviar un ajax");
          },
          success: function(data){
            //alert(data);
            data = jQuery.parseJSON(data);
            //alert("entre success");
            if(data[0].status == 'ok'){
              $('#mensaje').text(data[0].message);
              /*alert("entre");
              var $active = $('.wizard .nav-tabs li.active');
              $active.next().removeClass('disabled');
              nextTab($active);
              alert($('input[name=hora]:checked').val());*/
            }else if (data[0].status == 'fail'){
              //alert(data[0].message);
              $('#mensaje').text(data[0].message);
              //alert("no entre");

            }
          },
          error: function(data){
            alert(data);
            //alert("tampoco entre");
          }
        });
        //alert("no entre al ajax");
}
