class Pago < ActiveRecord::Base
  belongs_to :medio_contrato
  validates :importe, presence: true, numericality: {greater_than: 0}
  validates :fecha, presence: true
  validates_date_of :fecha, before: Proc.new { Time.now }
end
