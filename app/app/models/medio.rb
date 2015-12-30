class Medio < ActiveRecord::Base
  has_many :contrato_medios 
  has_many :espacios 
  validates :nombre, :presence => true, :length => {:minimum => 1}

  def espacios
    Espacio.where :medio_id => self.id
  end
end
