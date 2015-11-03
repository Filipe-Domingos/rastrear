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
//= require jquery.inputmask.extensions
//= require jquery.inputmask.numeric.extensions
//= require jquery.inputmask.date.extensions
//= require jquery.validate
//= require jquery.validate.additional-methods
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

    var v = component.value;
    v=v.replace(/\D/g,"");             //Remove tudo o que não é dígito
    v=v.replace(/(\d{2})(\d{1,10})$/,"($1) $2"); //Coloca parênteses em volta dos dois primeiros dígitos
    v=v.replace(/(\d{5})(\d{1,5})$/,"$1-$2");
    if (v.length >= 14){
      component.value = v.substr(0,15);
    }else{
      component.value = v;
    }   
}


$(document).ready(function(){
   $("#veiculo_placa").inputmask("AAA-9999");
});


function somenteNumero(e){
  var tecla=(window.event)?event.keyCode:e.which;
   
  if((tecla>47 && tecla<58)) 
    return true;
  else{
      if (tecla==8 || tecla==0) 
      return true;
      else 
      return false;
  }
     
}
 



