# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery -> 
  modelos = $('#veiculo_modelo_id').html()
  $('#marca_id').change ->
    marca = $('#marca_id :selected').text()
    options = $(modelos).filter("optgroup[label='#{marca}']").html()
    if options
      $('#veiculo_modelo_id').html(options)
    else
      $('#veiculo_modelo_id').empty()

    





