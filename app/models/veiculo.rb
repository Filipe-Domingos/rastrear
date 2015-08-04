class Veiculo < ActiveRecord::Base
  belongs_to :modelo
  belongs_to :marca
  belongs_to :cor_veiculo
  belongs_to :tipo_veiculo
end
