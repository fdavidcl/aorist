class AnuncianteContrato < ActiveRecord::Base
  belongs_to :anunciante
  has_many :cobros, dependent: :destroy
  validates :importe, presence: true, numericality: {greather_than: 0}
  validates :fecha, :duracion, presence: true
  validates_date_of :duracion, after: :fecha

end
