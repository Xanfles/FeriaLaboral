$(document).ready(function () {

filltabla();

});

function filltabla(){
  $('#tabla_todo').DataTable({
    "ajax": {
      "url": "query/fillAlumnos.php?action=todo",
      "dataSrc": ""
    },
    "columns": [
            {"data": "rut"},
            {"data": "nombre"},
            {"data": "celular"},
            {"data": "email"},
            {"data": "carrera"},
            {"data": "cargo"},
            {"data": "empresa"},
            {"data": "hora"}

        ]
  });
}
