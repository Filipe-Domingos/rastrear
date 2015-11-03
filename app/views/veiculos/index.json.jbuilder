json.array!(@veiculos) do |veiculo|
  json.extract! veiculo, :id, :modelo_id, :marca_id, :placa, :renavam, :cor_veiculo_id, :chassi, :peso, :capacidade_carga, :tipo_veiculo_id
  json.url veiculo_url(veiculo, format: :json)
end
