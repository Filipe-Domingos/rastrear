class ManutencaoPreventivaMailer < ApplicationMailer

  def manutencao_email(manutencao_preventiva)
    @manutencao_preventiva = manutencao_preventiva
    @url  = 'http://example.com/login'
    mail(to: @manutencao_preventiva.email, subject: 'Manutenção preventiva')
  end
end
