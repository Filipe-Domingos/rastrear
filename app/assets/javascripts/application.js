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
//= require_tree .
//= require jquery
//= require jquery_ujs
//= require jquery.inputmask
//= require jquery-ui/datepicker
//= require bootstrap
//= require bootstrap-datepicker
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.pt-BR.js

$.fn.datepicker.defaults.todayHighlight = true;
$.fn.datepicker.defaults.format = "dd/mm/yyyy";
$.fn.datepicker.defaults.language = "pt-BR";
$.fn.datepicker.defaults.autoclose = true;

$(function() {
  $('.datepicker').datepicker();
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
}
