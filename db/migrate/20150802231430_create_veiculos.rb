class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.references :modelo, index: true, foreign_key: true
      t.references :marca, index: true, foreign_key: true
      t.string :placa
      t.string :renavam
      t.references :cor_veiculo, index: true, foreign_key: true
      t.string :chassi
      t.float :peso
      t.float :capacidade_carga
      t.references :tipo_veiculo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
