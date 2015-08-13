class Marca < ActiveRecord::Base
  has_many :modelos, foreign_key: 'marca_id', dependent: :destroy
end
