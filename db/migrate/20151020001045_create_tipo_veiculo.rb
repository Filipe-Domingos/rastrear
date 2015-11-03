class CreateTipoVeiculo < ActiveRecord::Migration
  def change
    tipo_veiculos = TipoVeiculo.all

    if tipo_veiculos.empty?
      t1 = TipoVeiculo.new
      t1.descricao = "Carro"
      t1.save

      t2 = TipoVeiculo.new
      t2.descricao = "Moto"
      t2.save

      t3 = TipoVeiculo.new
      t3.descricao = "Caminhão"
      t3.save

      t4 = TipoVeiculo.new
      t4.descricao = "Carreta"
      t4.save

      t5 = TipoVeiculo.new
      t5.descricao = "Trator"
      t5.save
      
    end
  end
end
