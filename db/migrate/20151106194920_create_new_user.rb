class CreateNewUser < ActiveRecord::Migration
  def change
    if User.where(email: "felipe@rastrear.com.br").empty?
      User.create!( email: 'felipe@rastrear.com.br', password: '12345678')
    end

    if User.where(email: "ronanrrf@gmail.com").empty?
      User.create!( email: 'ronanrrf@gmail.com', password: '12345678')
    end
  end
end
