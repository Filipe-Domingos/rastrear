class AlterTableModelo < ActiveRecord::Migration
  def change
    add_column :modelos , :marca_id , :integer
    add_foreign_key :modelos, :marcas
  end
end
