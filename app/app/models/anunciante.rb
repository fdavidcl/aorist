class Anunciante < ActiveRecord::Base
  has_many :anuncios
  has_many :anunciante_contratos
  has_many :audiences
  validates :nombre, :web, :fiscales, presence: true, length: {minimum: 1}

  def anuncios
    Anuncio.where anunciante_id: self.id
  end
end
