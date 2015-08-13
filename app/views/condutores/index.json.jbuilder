json.array!(@condutores) do |condutor|
  json.extract! condutor, :id, :nome, :cnh, :vencimento, :categoria_cnh_id
  json.url condutor_url(condutor, format: :json)
end
