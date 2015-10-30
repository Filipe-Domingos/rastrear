class Condutor < ActiveRecord::Base
  belongs_to :categoria_cnh

  validates :nome , presence: true 
  validates :telefone , length:{is: 15}
  validates :cnh, numericality: { only_integer: true },length:{is: 11}

  
end
