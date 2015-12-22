class CreateAgendamentoViagens < ActiveRecord::Migration
  def change
    create_table :agendamento_viagens do |t|
      t.datetime :data_hora_saida
      t.references :veiculos
      t.references :condutores
      t.timestamps null: false
    end
  end
end
