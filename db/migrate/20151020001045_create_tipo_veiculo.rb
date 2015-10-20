class CreateTipoVeiculo < ActiveRecord::Migration
  def change
    array = Array.new
    tipo_veiculos = TipoVeiculo.all

    if tipo_veiculos.empty?
      t1 = TipoVeiculo.new
      t1.descricao = "Carro"
      array << t1

      t2 = TipoVeiculo.new
      t2.descricao = "Moto"
      array << t2

      t3 = TipoVeiculo.new
      t3.descricao = "Caminhão"
      array << t3

      t4 = TipoVeiculo.new
      t4.descricao = "Carreta"
      array << t4

      t5 = TipoVeiculo.new
      t5.descricao = "Trator"
      array << t5

      array.save_all
    end
  end
end
