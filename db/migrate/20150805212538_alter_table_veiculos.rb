class AlterTableVeiculos < ActiveRecord::Migration
  def change
    remove_foreign_key :veiculos, :marcas
    remove_column :veiculos , :marca_id
  end
end
