class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end
