class ManutencaoPreventiva < ActiveRecord::Base
  belongs_to :veiculo

  validates :data_manutencao, presence: { message: " é inválida." }
  validates :veiculo_id,:descricao,:email, presence: true
end
