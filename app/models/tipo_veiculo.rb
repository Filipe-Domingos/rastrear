class TipoVeiculo < ActiveRecord::Base
  has_many :marca_tipo_veiculos, foreign_key: 'tipo_veiculo_id', dependent: :destroy
  has_many :marcas, through: :marca_tipo_veiculos, source: :marca
end
