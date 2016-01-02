class Medio < ActiveRecord::Base
  has_many :contrato_medios 
  has_many :espacios 
  has_many :audiences
  validates :nombre, length: { minimum: 1 }
  validates :web, :fiscales, presence: true

  def espacios
    Espacio.where :medio_id => self.id
  end
end
