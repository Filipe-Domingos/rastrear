class CreateCorVeiculos < ActiveRecord::Migration
  def change
    create_table :cor_veiculos do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end
