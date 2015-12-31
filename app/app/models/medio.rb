class Medio < ActiveRecord::Base
  has_many :contrato_medios 
  has_many :espacios 
  has_many :audiences
  validates :nombre, :web, :fiscales, presence :true, :length => {:minimum => 1}

  def espacios
    Espacio.where :medio_id => self.id
  end
end
