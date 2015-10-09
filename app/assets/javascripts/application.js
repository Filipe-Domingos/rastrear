// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.inputmask
//= require jquery.ui.all
//= require bootstrap
//= require smart_listing
//= require underscore
//= require gmaps/google
//= require_tree .


//$.fn.datepicker.defaults.todayHighlight = true;
//$.fn.datepicker.defaults.format = "dd/mm/yyyy";
//$.fn.datepicker.defaults.language = "pt-BR";
//$.fn.datepicker.defaults.autoclose = true;

$(function() {
  $( "#accordion" ).accordion({
    heightStyle: "fill"
  });
});

$(function() {
  $('#date').datepicker({
    dateFormat: 'dd/mm/yy',
    minDate: "new Date()",
    dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'],
    dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
    dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
    monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
    monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez']
  });

  
});

function mascaraData(campoData){
               
    var data = campoData.value;
    if (data.length == 2){
      data = data + '/';
      campoData.value = data;
      return true;              
    }
    if (data.length == 5){
      data = data + '/';
      campoData.value = data;
      return true;
    }
    if (data.length == 11){
      data = data.substr(0,10);
      campoData.value = data;
      return true;
    }
}

function mascaraDDD(component){
               
    var ddd = component.value;
    if (ddd.length == 3){
      ddd = ddd.substr(0,2);
      component.value = ddd;
      return true;
    }
}

function mascaraTelefone(component){
               
    var telefone = component.value;
    if (telefone.length == 5){
      telefone = telefone + '-';
      component.value = telefone;
      return true;
    }
    if (telefone.length == 11){
      telefone = telefone.substr(0,10);
      component.value = telefone;
      return true;
    }
}


