class ChangeCondutor < ActiveRecord::Migration
  def change
    change_table :condutores do |t|
      
      t.references :categoria_cnh, index: true, foreign_key: true

    end
  end
end
