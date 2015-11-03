class CreateUser < ActiveRecord::Migration
  def change
    user = Usuario.where("email = ?","ronanrrf@gmail.com")

    if user.empty?
      u = Usuario.new
      u.email = "ronanrrf@gmail.com"
      u.senha = "123"
      u.save
    end
  end
end
