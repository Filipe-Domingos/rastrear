class AlterTableCondutor < ActiveRecord::Migration
  def change
    remove_column :condutores, :ddd
  end
end
