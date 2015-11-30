class MarcaTipoVeiculo < ActiveRecord::Base
  belongs_to :tipo_veiculo
  belongs_to :marca
end
