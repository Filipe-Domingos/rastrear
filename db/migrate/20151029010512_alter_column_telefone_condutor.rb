class AlterColumnTelefoneCondutor < ActiveRecord::Migration
  def change
    change_column :condutores, :telefone, :string
  end
end
