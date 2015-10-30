class CarregaTabelaDeCores < ActiveRecord::Migration
  def change
    cores = CorVeiculo.all
    array = Array.new

    if cores.empty?
      c1 = CorVeiculo.new
      c1.descricao = "Branco"
      array << c1

      c2 = CorVeiculo.new
      c2.descricao = "Amarelo"
      array << c2

      c3 = CorVeiculo.new
      c3.descricao = "Verde"
      array << c3

      c4 = CorVeiculo.new
      c4.descricao = "Preto"
      array << c4

      c5 = CorVeiculo.new
      c5.descricao = "Vermelho"
      array << c5

      c6 = CorVeiculo.new
      c6.descricao = "Azul"
      array << c6

      array.save_all
    end
  end
end
