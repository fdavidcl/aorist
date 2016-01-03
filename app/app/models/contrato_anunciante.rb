class ContratoAnunciante < ActiveRecord::Base
  belongs_to :anunciante
  has_many :cobros
  validates :importe, presence: true, numericality: {greather_than: 0}
  validates :fecha, :duracion, presence: true
  validates_date_of :duracion, after: :fecha
  
  # Documentación date_validator http://www.rubydoc.info/gems/date_validator/0.8.1
  
end
