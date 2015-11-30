class CreateMarcaTipoVeiculo < ActiveRecord::Migration
  def change
    create_table :marca_tipo_veiculos do |t|
      t.references :marca, index: true, foreign_key: true
      t.references :tipo_veiculo, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
