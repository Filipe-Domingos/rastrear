class CreateCategoriaCnhs < ActiveRecord::Migration
  def change
    create_table :categoria_cnhs do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end
