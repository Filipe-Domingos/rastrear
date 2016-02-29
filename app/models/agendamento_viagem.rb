class AgendamentoViagem < ActiveRecord::Base
  belongs_to :veiculo
  belongs_to :condutor

  validates :data_hora_saida, :veiculo_id, :condutor_id, :presence => true
end
