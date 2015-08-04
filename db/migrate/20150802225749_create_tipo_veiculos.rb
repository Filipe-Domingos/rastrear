class CreateTipoVeiculos < ActiveRecord::Migration
  def change
    create_table :tipo_veiculos do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end
