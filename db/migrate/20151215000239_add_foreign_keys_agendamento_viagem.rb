class AddForeignKeysAgendamentoViagem < ActiveRecord::Migration
  def change
    rename_column :agendamento_viagens, :veiculos_id, :veiculo_id
    rename_column :agendamento_viagens, :condutores_id, :condutor_id
    add_foreign_key :agendamento_viagens, :veiculos
    add_foreign_key :agendamento_viagens, :condutores
  end
end
