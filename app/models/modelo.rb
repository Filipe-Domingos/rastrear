class Modelo < ActiveRecord::Base
  belongs_to :marca, foreign_key: 'marca_id'
end
