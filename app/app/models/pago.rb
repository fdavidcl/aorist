class Pago < ActiveRecord::Base
  belongs_to :contrato_medio  
  validates :importe, presence: true, numericality: {greather_than: 0}
  
end

