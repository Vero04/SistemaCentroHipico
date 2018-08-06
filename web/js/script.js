/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $('.ir-arriba').click(function () {
        $('body, html').animate({
            scrollTop: '0px'
        }, 300);
    });
    $(window).scroll(function () {
        if ($(this).scrollTop() > 0) {
            $('.ir-arriba').slideDown(300);
        } else {
            $('.ir-arriba').slideUp(300);
        }
    });
    $('#table').DataTable();
    $(function () {
        $.datepicker.setDefaults($.datepicker.regional["es"]);
        $("#datepicker").datepicker({
            firstDay: 1,
            dateFormat: 'yy-mm-dd'
        });
    });
    function abrir() {
        open('pagina.html', 'HAY UN ERROR CON ALGUNO DE LOS CAMPOS', 'top=300,left=300,width=300,height=300');
    }
    function validacion() {
        horas = document.getElementById('horas').value;
        nulo = '00:00-00:00';
        if (horas === nulo) {
            alert('[ERROR] Debe de introducir horas validas');
            return false;
        }
        dni = document.getElementById('dni').value;
        var letras = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E', 'T'];

        if (!(/^\d{8}[A-Z]$/.test(dni))) {
            return false;
        }

        if (dni.charAt(8) !== letras[(dni.substring(0, 8)) % 23]) {
            return false;
        }
    }
});


