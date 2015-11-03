json.array!(@manutencao_preventivas) do |manutencao_preventiva|
  json.extract! manutencao_preventiva, :id, :data_manutencao, :email, :email_enviado, :kilometragem_manutencao, :veiculo_id, :descricao
  json.url manutencao_preventiva_url(manutencao_preventiva, format: :json)
end
