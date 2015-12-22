class AgendamentoViagem < ActiveRecord::Base
  belongs_to :veiculo
  belongs_to :condutor
end
