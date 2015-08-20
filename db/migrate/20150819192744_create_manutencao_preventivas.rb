class CreateManutencaoPreventivas < ActiveRecord::Migration
  def change
    create_table :manutencao_preventivas do |t|
      t.date :data_manutencao
      t.string :email
      t.boolean :email_enviado
      t.float :kilometragem_manutencao
      t.references :veiculo, index: true, foreign_key: true
      t.string :descricao

      t.timestamps null: false
    end
  end
end
