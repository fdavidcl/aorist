class MedioContrato < ActiveRecord::Base
  has_many :pagos, dependent: :destroy
  belongs_to :medio
  validates :importe, presence: true, numericality: {greater_than: 0}  # Comprobar
  validates :fecha, :duracion, presence: true
  validates_date_of :duracion, after: :fecha
  validates_date_of :fecha, before: Proc.new { Time.now }

end
