class Condutor < ActiveRecord::Base
  belongs_to :categoria_cnh

  validates :nome , presence: true 
  validates :ddd , length:{maximum: 2}
  validates :telefone , length:{in: 8..9}
end
