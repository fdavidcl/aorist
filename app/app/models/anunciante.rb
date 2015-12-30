class Anunciante < ActiveRecord::Base
  has_many :anuncios
  has_many :contrato_anunciantes
  validates :nombre, :presence => true, :length => {:minimum => 1}

  def anunciantes
    Anunciante.where :anunciante_id => self.id
  end
end
