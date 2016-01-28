class AnuncianteContrato < ActiveRecord::Base
  belongs_to :anunciante
  has_many :cobros, dependent: :destroy
  validates :importe, presence: true, numericality: {greater_than: 0}
  validates :fecha, :duracion, presence: true
  validates_date_of :duracion, after: :fecha
  validates_date_of :fecha, before: Proc.new { Time.now }

end
