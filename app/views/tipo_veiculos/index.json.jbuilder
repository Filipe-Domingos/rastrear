json.array!(@tipo_veiculos) do |tipo_veiculo|
  json.extract! tipo_veiculo, :id, :descricao
  json.url tipo_veiculo_url(tipo_veiculo, format: :json)
end
