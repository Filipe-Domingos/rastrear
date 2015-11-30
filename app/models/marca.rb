class Marca < ActiveRecord::Base
  has_many :modelos , foreign_key: 'marca_id', dependent: :destroy
  has_many :marca_tipo_veiculos, foreign_key: 'marca_id', dependent: :destroy
  has_many :tipo_veiculos, through: :marca_tipo_veiculos, source: :tipo_veiculo
end
