class Pago < ActiveRecord::Base
  belongs_to :medio_contrato  
  validates :importe, presence: true, numericality: {greather_than: 0}

end
