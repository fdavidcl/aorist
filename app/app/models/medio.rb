class Medio < ActiveRecord::Base
  validates :nombre, :presence => true, :length => {:minimum => 1}

  def espacios
    Espacio.where :medio_id => self.id
  end
end
