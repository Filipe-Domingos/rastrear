class CreateCategorias < ActiveRecord::Migration
  def change
    categorias = CategoriaCnh.all
    
    if categorias.empty?
      c1 = CategoriaCnh.new
      c1.descricao = "A"
      c1.save

      c2 = CategoriaCnh.new
      c2.descricao = "B"
      c2.save

      c3 = CategoriaCnh.new
      c3.descricao = "C"
      c3.save

      c4 = CategoriaCnh.new
      c4.descricao = "D"
      c4.save
      
      c5 = CategoriaCnh.new
      c5.descricao = "E"
      c5.save

      c6 = CategoriaCnh.new
      c6.descricao = "AB"
      c6.save

      c7 = CategoriaCnh.new
      c7.descricao = "AC"
      c7.save

      c8 = CategoriaCnh.new
      c8.descricao = "AD"
      c8.save

      c9 = CategoriaCnh.new
      c9.descricao = "AE"
      c9.save

    end
  end
end
