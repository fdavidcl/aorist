class ContratoMedio < ActiveRecord::Base
  has_many :pagos
  belongs_to :medio
  validates :importe, presence: true, :numericality => { :greather_than => 0 }  # Comprobar que esto sea correcto. 
  validates_date_of :duracion, after: :fecha
  
end
