class Veiculo < ActiveRecord::Base
  belongs_to :modelo
  belongs_to :marca
  belongs_to :cor_veiculo
  belongs_to :tipo_veiculo

  validates :tipo_veiculo,:modelo , presence: true
  validates :placa, presence:true , format:{with: VeiculosHelper::PLACA}
  validates :renavam, format:{with: VeiculosHelper::RENAVAM,
      message: ' deve possuir 11 digitos.'}

end
