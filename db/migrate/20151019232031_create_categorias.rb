class CreateCategorias < ActiveRecord::Migration
  def change
    array = Array.new
    categorias = CategoriaCnh.all
    
    if categorias.empty?
      c1 = CategoriaCnh.new
      c1.descricao = "A"
      array << c1

      c2 = CategoriaCnh.new
      c2.descricao = "B"
      array << c2

      c3 = CategoriaCnh.new
      c3.descricao = "C"
      array << c3

      c4 = CategoriaCnh.new
      c4.descricao = "D"
      array << c4
      
      c5 = CategoriaCnh.new
      c5.descricao = "E"
      array << c5

      c6 = CategoriaCnh.new
      c6.descricao = "AB"
      array << c6

      c7 = CategoriaCnh.new
      c7.descricao = "AC"
      array << c7

      c8 = CategoriaCnh.new
      c8.descricao = "AD"
      array << c8

      c9 = CategoriaCnh.new
      c9.descricao = "AE"
      array << c9

      array.save_all
    end
  end
end
