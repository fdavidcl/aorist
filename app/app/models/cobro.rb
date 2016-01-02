class Cobro < ActiveRecord::Base
  belongs_to :contrato_anunciante
  validates :importe, presence: true, numericality: {greather_than: 0}
  validates :fecha, presence: true
  validates_date_of :fecha, before: Proc.new { Time.now }
end
