class Anuncio < ActiveRecord::Base
  belongs_to :anunciante
  has_many :anuncio_allocations
  has_many :espacios, through: :anuncio_allocations
end
