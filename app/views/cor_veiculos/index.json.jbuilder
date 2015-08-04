json.array!(@cor_veiculos) do |cor_veiculo|
  json.extract! cor_veiculo, :id, :descricao
  json.url cor_veiculo_url(cor_veiculo, format: :json)
end
