class ContratoMedio < ActiveRecord::Base
  has_many :pagos, dependent: :destroy
  belongs_to :medio
  validates :importe, presence: true, :numericality => { :greather_than => 0 }  # Comprobar que esto sea correcto. 
  validates :fecha, :duracion, presence: true
  validates_date_of :duracion, after: :fecha
  
end
