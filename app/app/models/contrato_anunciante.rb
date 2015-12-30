class ContratoAnunciante < ActiveRecord::Base
  belongs_to :anunciante
  has_many :cobros
end
