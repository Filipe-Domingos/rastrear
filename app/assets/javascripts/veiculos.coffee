# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  marcas = $('#veiculo_marca_id').html()
  $('#veiculo_tipo_veiculo_id').change ->
    tipo_veiculo = $('#veiculo_tipo_veiculo_id :selected').text()
    options = $(marcas).filter("optgroup[label='#{tipo_veiculo}']").html()
    if options
      $('#veiculo_marca_id').html(options)
    else
      $('#veiculo_marca_id').empty()

  modelos = $('#veiculo_modelo_id').html()
  $('#veiculo_marca_id').change ->
    marca = $('#veiculo_marca_id :selected').text()
    options = $(modelos).filter("optgroup[label='#{marca}']").html()
    if options
      $('#veiculo_modelo_id').html(options)
    else
      $('#veiculo_modelo_id').empty()

  

   

    





