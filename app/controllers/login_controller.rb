class LoginController < ApplicationController

  def logar
    email = params[:email]
    senha = params[:senha]

    @usuario = Usuario.where(email: email,senha: senha)

    respond_to do |format|
      if @usuario.present?
        format.html { redirect_to '/home/index' }
        format.json { render :show, status: :created, location: @condutor }
      else

        format.html { redirect_to root_url,notice: 'Login ou senha inválidos.' }
        format.json { render json: @condutor.errors, status: :unprocessable_entity }
      end
    end
  end
end
