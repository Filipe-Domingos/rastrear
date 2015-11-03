class Veiculo < ActiveRecord::Base
  belongs_to :modelo
  belongs_to :marca
  belongs_to :cor_veiculo
  belongs_to :tipo_veiculo

  attr_accessor :marca_id

  validates :tipo_veiculo,:modelo,:marca_id , presence: true
  validates :placa, presence:true , format:{with: VeiculosHelper::PLACA}
  validates :renavam, format:{with: VeiculosHelper::RENAVAM,
      message: ' deve possuir 11 digitos.'}

  def self.combo_manutencao_preventiva
    lista = Veiculo.all.order(created_at: "desc")
    veiculos = Array.new

    lista.each do |l|
      hash = {id: l.id,descricao: l.placa << " - " << l.modelo.marca.descricao << " " << l.modelo.descricao}
      veiculos << hash
    end
    
    veiculos
  end

end
