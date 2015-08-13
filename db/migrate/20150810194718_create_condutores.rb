class CreateCondutores < ActiveRecord::Migration
  def change
    create_table :condutores do |t|
      t.string :nome
      t.string :cnh
      t.date :vencimento_cnh
      t.integer :ddd
      t.integer :telefone


      t.timestamps null: false
    end
  end
end
