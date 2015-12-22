json.array!(@agendamento_viagens) do |agendamento_viagem|
  json.extract! agendamento_viagem, :id
  json.url agendamento_viagem_url(agendamento_viagem, format: :json)
end
